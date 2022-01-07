
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {int calibration_data_source; } ;
typedef int HAL_BOOL ;


 TYPE_1__* AH9300 (struct ath_hal*) ;
 int AH_FALSE ;
 int ar9300_calibration_data_read_eeprom (struct ath_hal*,long,int *,int) ;
 int ar9300_calibration_data_read_flash (struct ath_hal*,long,int *,int) ;
 int ar9300_calibration_data_read_nand (struct ath_hal*,long,int *,int) ;
 int ar9300_calibration_data_read_otp (struct ath_hal*,long,int *,int,int) ;





HAL_BOOL
ar9300_calibration_data_read(struct ath_hal *ah, long address,
    u_int8_t *buffer, int many)
{
    switch (AH9300(ah)->calibration_data_source) {
    case 130:
        return ar9300_calibration_data_read_flash(ah, address, buffer, many);
    case 131:
        return ar9300_calibration_data_read_eeprom(ah, address, buffer, many);
    case 128:
        return ar9300_calibration_data_read_otp(ah, address, buffer, many, 1);





    }
    return AH_FALSE;
}
