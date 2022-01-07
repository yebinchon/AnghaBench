
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 int AR_PHY_SPECTRAL_SCAN ;
 int AR_PHY_SPECTRAL_SCAN_ACTIVE ;
 int MS (int ,int ) ;
 int OS_REG_READ (struct ath_hal*,int ) ;

HAL_BOOL
ar9300_is_spectral_active(struct ath_hal *ah)
{
    u_int32_t val;

    val = OS_REG_READ(ah, AR_PHY_SPECTRAL_SCAN);
    return MS(val, AR_PHY_SPECTRAL_SCAN_ACTIVE);
}
