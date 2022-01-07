
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal_9300 {int ah_eeprom; } ;
struct ath_hal {int dummy; } ;
typedef int int32_t ;
typedef int ar9300_eeprom_t ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;
 int OS_MEMCPY (int *,int *,int) ;
 int * ar9300_eeprom_struct_default_find_by_id (int) ;
 int ar9300_eeprom_struct_size () ;
 int calibration_data_none ;
 int calibration_data_source ;
 scalar_t__ calibration_data_source_address ;

int32_t ar9300_eeprom_template_install(struct ath_hal *ah, int32_t value)
{
    struct ath_hal_9300 *ahp = AH9300(ah);
    ar9300_eeprom_t *mptr, *dptr;
    int mdata_size;

    mptr = &ahp->ah_eeprom;
    mdata_size = ar9300_eeprom_struct_size();
    if (mptr != 0) {




        dptr = ar9300_eeprom_struct_default_find_by_id(value);
        if (dptr != 0) {
            OS_MEMCPY(mptr, dptr, mdata_size);
            return 0;
        }
    }
    return -1;
}
