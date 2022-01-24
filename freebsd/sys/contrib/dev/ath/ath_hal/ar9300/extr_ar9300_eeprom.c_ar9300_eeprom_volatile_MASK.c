#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ath_hal {int dummy; } ;
struct TYPE_2__ {scalar_t__ calibration_data_source; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct ath_hal*) ; 
 scalar_t__ calibration_data_otp ; 

int
FUNC1(struct ath_hal *ah)
{
    if (FUNC0(ah)->calibration_data_source == calibration_data_otp) {
        return 0;        /* no eeprom, use otp */
    } else {
        return 1;        /* board has eeprom or flash */
    }
}