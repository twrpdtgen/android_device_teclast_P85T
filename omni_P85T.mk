#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from P85T device
$(call inherit-product, device/teclast/P85T/device.mk)

PRODUCT_DEVICE := P85T
PRODUCT_NAME := omni_P85T
PRODUCT_BRAND := Teclast
PRODUCT_MODEL := P85T_ROW
PRODUCT_MANUFACTURER := teclast

PRODUCT_GMS_CLIENTID_BASE := android-allwinner

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="af8638vat-user 13 TQ2A.230405.003.B2 eng.tanggy.20240319.055436 release-keys"

BUILD_FINGERPRINT := Teclast/P85T_ROW/P85T:13/TQ2A.230405.003.B2/b3d210318:user/release-keys
