
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ath_hal {int dummy; } ;


 int AR_PHY_TIMING2 ;
 int AR_PHY_TIMING2_FORCE_PPM_VAL ;
 int AR_PHY_TIMING2_USE_FORCE_PPM ;
 int OS_REG_READ (struct ath_hal*,int ) ;

u_int32_t
ar9300_ppm_get_force_state(struct ath_hal *ah)
{
    return
        OS_REG_READ(ah, AR_PHY_TIMING2) &
        (AR_PHY_TIMING2_USE_FORCE_PPM | AR_PHY_TIMING2_FORCE_PPM_VAL);
}
