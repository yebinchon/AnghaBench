#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32_t ;
typedef  scalar_t__ u_int16_t ;
struct ath_hal {int dummy; } ;
struct TYPE_3__ {scalar_t__ halKeyCacheSize; } ;
struct TYPE_4__ {TYPE_1__ ah_caps; } ;
typedef  TYPE_1__ HAL_CAPABILITIES ;
typedef  int /*<<< orphan*/  HAL_BOOL ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AH_TRUE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int AR_KEYTABLE_VALID ; 
 int FUNC9 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ath_hal*,char*,...) ; 

HAL_BOOL
FUNC11(struct ath_hal *ah)
{

    const HAL_CAPABILITIES *p_cap = &FUNC0(ah)->ah_caps;
    u_int32_t key0, key1, key2, key3, key4;
    u_int32_t mac_hi, mac_lo;
    u_int16_t entry = 0;
    u_int32_t valid = 0;
    u_int32_t key_type;

    FUNC10(ah, "Slot   Key\t\t\t          Valid  Type  Mac  \n");

    for (entry = 0 ; entry < p_cap->halKeyCacheSize; entry++) {
        key0 = FUNC9(ah, FUNC1(entry));
        key1 = FUNC9(ah, FUNC2(entry));
        key2 = FUNC9(ah, FUNC3(entry));
        key3 = FUNC9(ah, FUNC4(entry));
        key4 = FUNC9(ah, FUNC5(entry));

        key_type = FUNC9(ah, FUNC8(entry));

        mac_lo = FUNC9(ah, FUNC6(entry));
        mac_hi = FUNC9(ah, FUNC7(entry));

        if (mac_hi & AR_KEYTABLE_VALID) {
            valid = 1;
        } else {
            valid = 0;
        }

        if ((mac_hi != 0) && (mac_lo != 0)) {
            mac_hi &= ~0x8000;
            mac_hi <<= 1;
            mac_hi |= ((mac_lo & (1 << 31) )) >> 31;
            mac_lo <<= 1;
        }

        FUNC10(ah,
            "%03d    "
            "%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x"
            "   %02d     %02d    "
            "%02x:%02x:%02x:%02x:%02x:%02x \n",
            entry,
            (key0 << 24) >> 24, (key0 << 16) >> 24,
            (key0 << 8) >> 24, key0 >> 24,
            (key1 << 24) >> 24, (key1 << 16) >> 24,
            //(key1 << 8) >> 24, key1 >> 24,
            (key2 << 24) >> 24, (key2 << 16) >> 24,
            (key2 << 8) >> 24, key2 >> 24,
            (key3 << 24) >> 24, (key3 << 16) >> 24,
            //(key3 << 8) >> 24, key3 >> 24,
            (key4 << 24) >> 24, (key4 << 16) >> 24,
            (key4 << 8) >> 24, key4 >> 24,
            valid, key_type,
            (mac_lo << 24) >> 24, (mac_lo << 16) >> 24, (mac_lo << 8) >> 24,
            (mac_lo) >> 24, (mac_hi << 24) >> 24, (mac_hi << 16) >> 24 );
    }

    return AH_TRUE;
}