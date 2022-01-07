
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal_9300 {int ah_get_plcp_hdr; } ;
struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;
 int AR_PCU_MISC ;
 int AR_PCU_SEL_EVM ;
 int OS_REG_CLR_BIT (struct ath_hal*,int ,int ) ;
 int OS_REG_SET_BIT (struct ath_hal*,int ,int ) ;

HAL_BOOL
ar9300_set_rx_sel_evm(struct ath_hal *ah, HAL_BOOL sel_evm, HAL_BOOL just_query)
{
    struct ath_hal_9300 *ahp = AH9300(ah);
    HAL_BOOL old_value = ahp->ah_get_plcp_hdr == 0;

    if (just_query) {
        return old_value;
    }
    if (sel_evm) {
        OS_REG_SET_BIT(ah, AR_PCU_MISC, AR_PCU_SEL_EVM);
    } else {
        OS_REG_CLR_BIT(ah, AR_PCU_MISC, AR_PCU_SEL_EVM);
    }

    ahp->ah_get_plcp_hdr = !sel_evm;

    return old_value;
}
