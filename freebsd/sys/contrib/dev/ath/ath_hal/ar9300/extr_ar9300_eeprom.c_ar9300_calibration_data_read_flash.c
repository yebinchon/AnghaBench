
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 int AH_FALSE ;
 int AR9300_EEPROM_SIZE ;

HAL_BOOL
ar9300_calibration_data_read_flash(struct ath_hal *ah, long address,
    u_int8_t *buffer, int many)
{

    if (((address) < 0) || ((address + many) > AR9300_EEPROM_SIZE - 1)) {
        return AH_FALSE;
    }
    return AH_FALSE;
}
