#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  int /*<<< orphan*/  u_int16_t ;
struct ath_hal {int dummy; } ;
struct TYPE_4__ {int misc_configuration; } ;
struct TYPE_5__ {TYPE_1__ base_eep_header; } ;
typedef  TYPE_2__ ar9300_eeprom_t ;
struct TYPE_6__ {TYPE_2__ ah_eeprom; } ;
typedef  int /*<<< orphan*/  HAL_BOOL ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AR_PHY_AGC ; 
 int /*<<< orphan*/  AR_PHY_AGC_QUICK_DROP ; 
 scalar_t__ FUNC1 (struct ath_hal*) ; 
 scalar_t__ FUNC2 (struct ath_hal*) ; 
 scalar_t__ FUNC3 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HAL_BOOL FUNC6(struct ath_hal *ah, u_int16_t channel)
{
    ar9300_eeprom_t *eep = &FUNC0(ah)->ah_eeprom;
    u_int32_t value;
    //
    // Test value. if 0 then quickDrop is unused. Don't load anything.
    //
    if (eep->base_eep_header.misc_configuration & 0x10)
	{
        if (FUNC2(ah) || FUNC1(ah) || FUNC3(ah)) 
        {
            value = FUNC5(ah, 0, channel);
            FUNC4(ah, AR_PHY_AGC, AR_PHY_AGC_QUICK_DROP, value);
        }
    }
    return 0;
}