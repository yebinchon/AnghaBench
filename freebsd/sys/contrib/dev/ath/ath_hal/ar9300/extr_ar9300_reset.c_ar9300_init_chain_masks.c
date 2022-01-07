
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ath_hal {int dummy; } ;
struct TYPE_6__ {scalar_t__ green_ap_ps_on; } ;
struct TYPE_4__ {scalar_t__ halApmEnable; } ;
struct TYPE_5__ {TYPE_1__ ah_caps; } ;


 TYPE_3__* AH9300 (struct ath_hal*) ;
 TYPE_2__* AH_PRIVATE (struct ath_hal*) ;
 int AR_PHY_ANALOG_SWAP ;
 int AR_PHY_CAL_CHAINMASK ;
 int AR_PHY_RX_CHAINMASK ;
 int AR_PHY_SWAP_ALT_CHAIN ;
 int AR_SELFGEN_MASK ;
 int HAL_GREEN_AP_RX_MASK ;
 int OS_REG_SET_BIT (struct ath_hal*,int ,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;

__attribute__((used)) static inline void
ar9300_init_chain_masks(struct ath_hal *ah, int rx_chainmask, int tx_chainmask)
{
    if (AH9300(ah)->green_ap_ps_on) {
        rx_chainmask = HAL_GREEN_AP_RX_MASK;
    }
    if (rx_chainmask == 0x5) {
        OS_REG_SET_BIT(ah, AR_PHY_ANALOG_SWAP, AR_PHY_SWAP_ALT_CHAIN);
    }
    OS_REG_WRITE(ah, AR_PHY_RX_CHAINMASK, rx_chainmask);
    OS_REG_WRITE(ah, AR_PHY_CAL_CHAINMASK, rx_chainmask);
    if (AH_PRIVATE(ah)->ah_caps.halApmEnable && (tx_chainmask == 0x7)) {
        OS_REG_WRITE(ah, AR_SELFGEN_MASK, 0x3);
    }
    else {
        OS_REG_WRITE(ah, AR_SELFGEN_MASK, tx_chainmask);
    }

    if (tx_chainmask == 0x5) {
        OS_REG_SET_BIT(ah, AR_PHY_ANALOG_SWAP, AR_PHY_SWAP_ALT_CHAIN);
    }
}
