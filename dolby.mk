#
# Copyright (C) 2025 Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Dolby path
DOLBY_PATH := hardware/dolby

# Soong Namespace
PRODUCT_SOONG_NAMESPACES += \
   $(DOLBY_PATH)

# Enable codec support
AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP := true

# SEPolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(DOLBY_PATH)/sepolicy/vendor

# Dolby libs
PRODUCT_PACKAGES += \
    libdapparamstorage_sp \
    libdlbdsservice_sp \
    libdlbpreg_sp \
    libspatializerparamstorage \
    libdlbvol_sp \
    libswdap_sp \
    libswgamedap_sp \
    libcodec2_soft_ac4dec_sp \
    libcodec2_soft_ddpdec_sp \
    libcodec2_store_dolby_sp \
    vendor.dolby_sp.hardware.dmssp@2.0-impl \
    vendor.dolby_sp.hardware.dmssp@2.0 \
    vendor.dolby_sp.hardware.dmssp@2.0-service \
    vendor.dolby_sp.media.c2@1.0-service

# DaxUI and daxService
PRODUCT_PACKAGES += \
    DaxUI \
    daxService

# Configs
PRODUCT_COPY_FILES += \
    $(DOLBY_PATH)/configs/dolby/dax-default.xml:$(TARGET_COPY_OUT_ODM)/etc/dolby/dax-default.xml \
    $(DOLBY_PATH)/configs/dolby/dax-default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dolby/dax-default.xml \
    $(DOLBY_PATH)/configs/media/media_codecs_dolby_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_dolby_audio.xml


PRODUCT_COPY_FILES += \
    $(DOLBY_PATH)/configs/dolby/config-com.dolby.daxappui.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/config-com.dolby.daxappui.xml \
    $(DOLBY_PATH)/configs/dolby/config-com.dolby.daxservice.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/config-com.dolby.daxservice.xml \
    $(DOLBY_PATH)/configs/dolby/hiddenapi-com.dolby.daxservice.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/hiddenapi-com.dolby.daxservice.xml \
    $(DOLBY_PATH)/configs/dolby/privapp-com.dolby.daxappui.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-com.dolby.daxappui.xml \
    $(DOLBY_PATH)/configs/dolby/privapp-com.dolby.daxservice.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-com.dolby.daxservice.xml

PRODUCT_COPY_FILES += \
    $(DOLBY_PATH)/proprietary/vendor/etc/init/vendor.dolby.media.c2@1.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/vendor.dolby.media.c2@1.0-service.rc \
    $(DOLBY_PATH)/proprietary/vendor/etc/init/vendor.dolby_sp.hardware.dmssp@2.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/vendor.dolby_sp.hardware.dmssp@2.0-service.rc \

# Properties
PRODUCT_VENDOR_PROPERTIES += \
    persist.vendor.audio.delta.refresh=true \
    ro.vendor.audio.dolby.surround.enable=true \
    ro.vendor.dolby.dax.version=DAX3_3.6.0.12_r1 \
    ro.vendor.product.device.db=OP_DEVICE \
    ro.vendor.product.manufacturer.db=OP_PHONE \
    vendor.audio.dolby.ds2.enabled=true \
    vendor.audio.dolby.ds2.hardbypass=true \
    vendor.product.device=OP_PHONE \
    vendor.product.manufacturer=OPD

