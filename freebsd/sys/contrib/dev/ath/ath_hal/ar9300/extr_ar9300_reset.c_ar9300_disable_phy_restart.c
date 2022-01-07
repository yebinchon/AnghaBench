
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {int ah_phyrestart_disabled; } ;


 TYPE_1__* AH9300 (struct ath_hal*) ;
 int AR_PHY_RESTART ;
 int AR_PHY_RESTART_ENA ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int ) ;

void ar9300_disable_phy_restart(struct ath_hal *ah, int disable_phy_restart)
{
    u_int32_t val;

    val = OS_REG_READ(ah, AR_PHY_RESTART);
    if (disable_phy_restart) {
        val &= ~AR_PHY_RESTART_ENA;
        AH9300(ah)->ah_phyrestart_disabled = 1;
    } else {
        val |= AR_PHY_RESTART_ENA;
        AH9300(ah)->ah_phyrestart_disabled = 0;
    }
    OS_REG_WRITE(ah, AR_PHY_RESTART, val);

    val = OS_REG_READ(ah, AR_PHY_RESTART);
}
