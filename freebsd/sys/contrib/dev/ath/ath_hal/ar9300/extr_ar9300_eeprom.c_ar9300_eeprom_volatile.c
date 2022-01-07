
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hal {int dummy; } ;
struct TYPE_2__ {scalar_t__ calibration_data_source; } ;


 TYPE_1__* AH9300 (struct ath_hal*) ;
 scalar_t__ calibration_data_otp ;

int
ar9300_eeprom_volatile(struct ath_hal *ah)
{
    if (AH9300(ah)->calibration_data_source == calibration_data_otp) {
        return 0;
    } else {
        return 1;
    }
}
