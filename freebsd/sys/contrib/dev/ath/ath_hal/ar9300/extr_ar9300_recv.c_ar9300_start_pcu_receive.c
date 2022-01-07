
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 int AR_DIAG_RX_ABORT ;
 int AR_DIAG_RX_DIS ;
 int AR_DIAG_SW ;
 int OS_REG_CLR_BIT (struct ath_hal*,int ,int) ;
 int ar9300_ani_reset (struct ath_hal*,int ) ;
 int ar9300_enable_mib_counters (struct ath_hal*) ;

void
ar9300_start_pcu_receive(struct ath_hal *ah, HAL_BOOL is_scanning)
{
    ar9300_enable_mib_counters(ah);
    ar9300_ani_reset(ah, is_scanning);

    OS_REG_CLR_BIT(ah, AR_DIAG_SW, (AR_DIAG_RX_DIS | AR_DIAG_RX_ABORT));
}
