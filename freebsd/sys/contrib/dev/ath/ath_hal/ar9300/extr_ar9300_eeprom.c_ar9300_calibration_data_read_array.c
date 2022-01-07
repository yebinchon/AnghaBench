
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 int AH_TRUE ;
 int ar9300_calibration_data_read (struct ath_hal*,int,int *,int) ;

HAL_BOOL
ar9300_calibration_data_read_array(struct ath_hal *ah, int address,
    u_int8_t *buffer, int many)
{
    int it;

    for (it = 0; it < many; it++) {
        (void)ar9300_calibration_data_read(ah, address - it, buffer + it, 1);
    }
    return AH_TRUE;
}
