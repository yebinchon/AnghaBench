#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ath_hal_9300 {int /*<<< orphan*/  ah_eeprom; } ;
struct ath_hal {int dummy; } ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  ar9300_eeprom_t ;

/* Variables and functions */
 struct ath_hal_9300* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  calibration_data_none ; 
 int /*<<< orphan*/  calibration_data_source ; 
 scalar_t__ calibration_data_source_address ; 

int32_t FUNC4(struct ath_hal *ah, int32_t value)
{
    struct ath_hal_9300 *ahp = FUNC0(ah);
    ar9300_eeprom_t *mptr, *dptr;
    int mdata_size;

    mptr = &ahp->ah_eeprom;
    mdata_size = FUNC3();
    if (mptr != 0) {
#if 0
        calibration_data_source = calibration_data_none;
        calibration_data_source_address = 0;
#endif
        dptr = FUNC2(value);
        if (dptr != 0) {
            FUNC1(mptr, dptr, mdata_size);
            return 0;
        }
    }
    return -1;
}