
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hal {int dummy; } ;
typedef int int32_t ;
struct TYPE_2__ {int calibration_data_source_address; } ;


 TYPE_1__* AH9300 (struct ath_hal*) ;
 int calibration_data_try_address ;

int32_t ar9300_calibration_data_address_get(struct ath_hal *ah)
{
    if (ah != 0) {
        return AH9300(ah)->calibration_data_source_address;
    } else {
        return calibration_data_try_address;
    }
}
