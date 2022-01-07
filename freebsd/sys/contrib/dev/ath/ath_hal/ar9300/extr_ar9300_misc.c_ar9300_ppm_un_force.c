
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ath_hal {int dummy; } ;


 int AR_PHY_TIMING2 ;
 int AR_PHY_TIMING2_USE_FORCE_PPM ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;

void
ar9300_ppm_un_force(struct ath_hal *ah)
{
    u_int32_t data4;

    data4 = OS_REG_READ(ah, AR_PHY_TIMING2) & ~AR_PHY_TIMING2_USE_FORCE_PPM;
    OS_REG_WRITE(ah, AR_PHY_TIMING2, data4);
}
