
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ath_hal {int dummy; } ;


 int AR_PHY_MODE ;
 int AR_PHY_MODE_DYN_CCK_DISABLE ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int ) ;

void
ar9300_disable_cck(struct ath_hal *ah)
{
    u_int32_t val;

    val = OS_REG_READ(ah, AR_PHY_MODE);
    val &= ~(AR_PHY_MODE_DYN_CCK_DISABLE);

    OS_REG_WRITE(ah, AR_PHY_MODE, val);
}
