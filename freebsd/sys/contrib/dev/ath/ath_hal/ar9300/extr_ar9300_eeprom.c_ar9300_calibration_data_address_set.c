
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hal {int dummy; } ;
typedef void* int32_t ;
struct TYPE_2__ {void* calibration_data_source_address; } ;


 TYPE_1__* AH9300 (struct ath_hal*) ;
 void* calibration_data_try_address ;

void ar9300_calibration_data_address_set(struct ath_hal *ah, int32_t size)
{
    if (ah != 0) {
        AH9300(ah)->calibration_data_source_address = size;
    } else {
        calibration_data_try_address = size;
    }
}
