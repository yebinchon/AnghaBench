
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;


 int AR_DIAG_RX_DIS ;
 int AR_DIAG_SW ;
 int OS_REG_SET_BIT (struct ath_hal*,int ,int ) ;
 int ar9300_disable_mib_counters (struct ath_hal*) ;

void
ar9300_stop_pcu_receive(struct ath_hal *ah)
{
    OS_REG_SET_BIT(ah, AR_DIAG_SW, AR_DIAG_RX_DIS);
    ar9300_disable_mib_counters(ah);
}
