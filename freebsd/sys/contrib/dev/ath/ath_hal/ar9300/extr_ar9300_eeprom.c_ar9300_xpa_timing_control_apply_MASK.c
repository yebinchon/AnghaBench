#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int8_t ;
struct ath_hal {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  tx_frame_to_xpa_on; } ;
struct TYPE_8__ {int /*<<< orphan*/  tx_frame_to_xpa_on; } ;
struct TYPE_7__ {int feature_enable; } ;
struct TYPE_9__ {TYPE_1__ modal_header_5g; TYPE_3__ modal_header_2g; TYPE_2__ base_eep_header; } ;
typedef  TYPE_4__ ar9300_eeprom_t ;
struct TYPE_10__ {TYPE_4__ ah_eeprom; } ;
typedef  scalar_t__ HAL_BOOL ;

/* Variables and functions */
 TYPE_5__* FUNC0 (struct ath_hal*) ; 
 scalar_t__ AH_TRUE ; 
 int /*<<< orphan*/  AR_PHY_XPA_TIMING_CTL ; 
 int /*<<< orphan*/  AR_PHY_XPA_TIMING_CTL_FRAME_XPAA_ON ; 
 int /*<<< orphan*/  AR_PHY_XPA_TIMING_CTL_FRAME_XPAB_ON ; 
 scalar_t__ FUNC1 (struct ath_hal*) ; 
 scalar_t__ FUNC2 (struct ath_hal*) ; 
 scalar_t__ FUNC3 (struct ath_hal*) ; 
 scalar_t__ FUNC4 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

HAL_BOOL FUNC6(struct ath_hal *ah, HAL_BOOL is_2ghz)
{
    u_int8_t xpa_timing_control;
    ar9300_eeprom_t *eep = &FUNC0(ah)->ah_eeprom;
    if ((eep->base_eep_header.feature_enable & 0x80) >> 7) {
		if (FUNC3(ah) || FUNC1(ah) || FUNC4(ah) || FUNC2(ah)) {
			if (is_2ghz) {
                xpa_timing_control = eep->modal_header_2g.tx_frame_to_xpa_on;
                FUNC5(ah,
						AR_PHY_XPA_TIMING_CTL, AR_PHY_XPA_TIMING_CTL_FRAME_XPAB_ON,
						xpa_timing_control);
			} else {
                xpa_timing_control = eep->modal_header_5g.tx_frame_to_xpa_on;
                FUNC5(ah,
						AR_PHY_XPA_TIMING_CTL, AR_PHY_XPA_TIMING_CTL_FRAME_XPAA_ON,
						xpa_timing_control);
			}
		}
	}
    return AH_TRUE;
}