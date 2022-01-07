
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_2__ {scalar_t__ halHwUapsdTrig; } ;
struct ath_hal_private {scalar_t__ ah_macRev; scalar_t__ ah_opmode; TYPE_1__ ah_caps; } ;
struct ath_hal_9300 {int rx_buf_size; } ;
struct ath_hal {int dummy; } ;
typedef TYPE_1__ HAL_CAPABILITIES ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;
 struct ath_hal_private* AH_PRIVATE (struct ath_hal*) ;
 scalar_t__ AH_TRUE ;
 int AR_AHB_MODE ;
 int AR_AHB_PREFETCH_RD_EN ;
 int AR_DATABUF ;
 int AR_FTRIG ;
 int AR_HPQ_ENABLE ;
 int AR_HPQ_UAPSD ;
 int AR_HPQ_UAPSD_TRIGGER_EN ;
 int AR_HP_Q_CONTROL ;
 int AR_PCU_TXBUF_CTRL ;
 int AR_PCU_TXBUF_CTRL_USABLE_SIZE ;
 int AR_RXBP_THRESH ;
 int AR_RXBP_THRESH_HP ;
 int AR_RXBP_THRESH_LP ;
 int AR_RXCFG ;
 int AR_RXCFG_DMASZ_128B ;
 int AR_RXCFG_DMASZ_MASK ;
 int AR_RXFIFO_CFG ;
 scalar_t__ AR_SREV_REVISION_WASP_12 ;
 scalar_t__ AR_SREV_WASP (struct ath_hal*) ;
 int AR_TXCFG ;
 int AR_TXCFG_DMASZ_128B ;
 int AR_TXCFG_DMASZ_MASK ;
 scalar_t__ HAL_M_HOSTAP ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_RMW_FIELD (struct ath_hal*,int ,int ,int) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;
 int ar9300_reset_tx_status_ring (struct ath_hal*) ;

__attribute__((used)) static inline void
ar9300_set_dma(struct ath_hal *ah)
{
    u_int32_t regval;
    struct ath_hal_9300 *ahp = AH9300(ah);
    struct ath_hal_private *ahpriv = AH_PRIVATE(ah);
    HAL_CAPABILITIES *pCap = &ahpriv->ah_caps;
    regval = OS_REG_READ(ah, AR_TXCFG) & ~AR_TXCFG_DMASZ_MASK;
    OS_REG_WRITE(ah, AR_TXCFG, regval | AR_TXCFG_DMASZ_128B);
    regval = OS_REG_READ(ah, AR_RXCFG) & ~AR_RXCFG_DMASZ_MASK;
    OS_REG_WRITE(ah, AR_RXCFG, regval | AR_RXCFG_DMASZ_128B);




    OS_REG_WRITE(ah, AR_RXFIFO_CFG, 0x200);






    if (AR_SREV_WASP(ah) &&
        (AH_PRIVATE((ah))->ah_macRev > AR_SREV_REVISION_WASP_12)) {



        OS_REG_WRITE(ah, AR_PCU_TXBUF_CTRL, 0x500);
    } else {
        OS_REG_WRITE(ah, AR_PCU_TXBUF_CTRL, AR_PCU_TXBUF_CTRL_USABLE_SIZE);
    }




    if (pCap->halHwUapsdTrig == AH_TRUE) {

        if (AH_PRIVATE(ah)->ah_opmode == HAL_M_HOSTAP) {
            OS_REG_WRITE(ah, AR_HP_Q_CONTROL,
                    AR_HPQ_ENABLE | AR_HPQ_UAPSD | AR_HPQ_UAPSD_TRIGGER_EN);
        }
    } else {

    }




    ar9300_reset_tx_status_ring(ah);






    OS_REG_RMW_FIELD(ah, AR_RXBP_THRESH, AR_RXBP_THRESH_HP, 0x1);
    OS_REG_RMW_FIELD(ah, AR_RXBP_THRESH, AR_RXBP_THRESH_LP, 0x1);




    if (ahp->rx_buf_size) {
        OS_REG_WRITE(ah, AR_DATABUF, ahp->rx_buf_size);
    }
}
