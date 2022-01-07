
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
typedef size_t u_int ;
struct ath_hal_9300 {scalar_t__ ah_cal_mem; } ;
struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;
 int AH_TRUE ;

HAL_BOOL
ar9300_flash_read(struct ath_hal *ah, u_int off, u_int16_t *data)
{
    struct ath_hal_9300 *ahp = AH9300(ah);

    *data = ((u_int16_t *)ahp->ah_cal_mem)[off];
    return AH_TRUE;
}
