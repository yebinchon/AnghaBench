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
typedef  int /*<<< orphan*/  ar9300_eeprom_t ;
struct TYPE_2__ {scalar_t__ calibration_data_source_address; void* calibration_data_source; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  Ar9300_eeprom_template_preference ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  ar9300_eeprom_template_default ; 
 void* calibration_data_none ; 

__attribute__((used)) static int
FUNC5(struct ath_hal *ah, ar9300_eeprom_t *mptr,
    int mdata_size)
{
    int it;
    ar9300_eeprom_t *dptr;
    int nptr;

    nptr = -1; 
    /*
     * if we didn't find any blocks in the memory,
     * put the prefered template in place
     */
    if (nptr < 0) {
        FUNC0(ah)->calibration_data_source = calibration_data_none;
        FUNC0(ah)->calibration_data_source_address = 0;
        dptr = FUNC3(
            Ar9300_eeprom_template_preference);
        if (dptr != 0) {
            FUNC1(mptr, dptr, mdata_size);    
            nptr = 0;
        }
    }
    /*
     * if we didn't find the prefered one,
     * put the normal default template in place
     */
    if (nptr < 0) {
        FUNC0(ah)->calibration_data_source = calibration_data_none;
        FUNC0(ah)->calibration_data_source_address = 0;
        dptr = FUNC3(
            ar9300_eeprom_template_default);
        if (dptr != 0) {
            FUNC1(mptr, dptr, mdata_size);    
            nptr = 0;
        }
    }
    /*
     * if we can't find the best template, put any old template in place
     * presume that newer ones are better, so search backwards
     */
    if (nptr < 0) {
        FUNC0(ah)->calibration_data_source = calibration_data_none;
        FUNC0(ah)->calibration_data_source_address = 0;
        for (it = FUNC4() - 1; it >= 0; it--) {
            dptr = FUNC2(it);
            if (dptr != 0) {
                FUNC1(mptr, dptr, mdata_size);    
                nptr = 0;
                break;
            }
        }
    }
    return nptr;
}