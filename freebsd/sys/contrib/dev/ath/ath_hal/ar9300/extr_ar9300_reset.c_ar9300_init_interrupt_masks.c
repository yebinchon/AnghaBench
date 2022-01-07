
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct ath_hal_9300 {int ah_mask_reg; int ah_mask2Reg; int ah_msi_reg; scalar_t__ ah_intr_mitigation_tx; scalar_t__ ah_intr_mitigation_rx; } ;
struct TYPE_2__ {scalar_t__ ath_hal_enable_msi; } ;
struct ath_hal {TYPE_1__ ah_config; } ;
typedef scalar_t__ HAL_OPMODE ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;
 int AR9300_INTR_SYNC_DEFAULT ;
 int AR9300_INTR_SYNC_DEF_NO_HOST1_PERR ;
 int AR9340_INTR_SYNC_DEFAULT ;
 int AR_HOSTIF_REG (struct ath_hal*,int ) ;
 int AR_IMR ;
 int AR_IMR_BCNMISC ;
 int AR_IMR_MIB ;
 int AR_IMR_RXERR ;
 int AR_IMR_RXINTM ;
 int AR_IMR_RXMINTR ;
 int AR_IMR_RXOK_HP ;
 int AR_IMR_RXOK_LP ;
 int AR_IMR_RXORN ;
 int AR_IMR_S2 ;
 int AR_IMR_S2_GTT ;
 int AR_IMR_TXERR ;
 int AR_IMR_TXINTM ;
 int AR_IMR_TXMINTR ;
 int AR_IMR_TXOK ;
 int AR_IMR_TXURN ;
 int AR_INTCFG ;
 int AR_INTCFG_MSI_RXINTM ;
 int AR_INTCFG_MSI_RXMINTR ;
 int AR_INTCFG_MSI_RXOK ;
 int AR_INTCFG_MSI_TXINTM ;
 int AR_INTCFG_MSI_TXMINTR ;
 int AR_INTCFG_MSI_TXOK ;
 int AR_INTR_PRIO_ASYNC_ENABLE ;
 int AR_INTR_PRIO_ASYNC_MASK ;
 int AR_INTR_PRIO_SYNC_ENABLE ;
 int AR_INTR_PRIO_SYNC_MASK ;
 int AR_INTR_SYNC_CAUSE ;
 int AR_INTR_SYNC_ENABLE ;
 int AR_INTR_SYNC_MASK ;
 int AR_PCIE_MSI ;
 int AR_PCIE_MSI_HW_DBI_WR_EN ;
 int AR_PCIE_MSI_HW_INT_PENDING_ADDR ;
 int AR_PCIE_MSI_HW_INT_PENDING_ADDR_MSI_64 ;
 scalar_t__ AR_SREV_POSEIDON (struct ath_hal*) ;
 scalar_t__ AR_SREV_WASP (struct ath_hal*) ;
 scalar_t__ HAL_M_HOSTAP ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;

__attribute__((used)) static inline void
ar9300_init_interrupt_masks(struct ath_hal *ah, HAL_OPMODE opmode)
{
    struct ath_hal_9300 *ahp = AH9300(ah);
    u_int32_t msi_cfg = 0;
    u_int32_t sync_en_def = AR9300_INTR_SYNC_DEFAULT;







    ahp->ah_mask_reg =
        AR_IMR_TXERR | AR_IMR_TXURN |
        AR_IMR_RXERR | AR_IMR_RXORN |
        AR_IMR_BCNMISC;

    if (ahp->ah_intr_mitigation_rx) {

        ahp->ah_mask_reg |= AR_IMR_RXINTM | AR_IMR_RXMINTR | AR_IMR_RXOK_HP;
        msi_cfg |= AR_INTCFG_MSI_RXINTM | AR_INTCFG_MSI_RXMINTR;
    } else {
        ahp->ah_mask_reg |= AR_IMR_RXOK_LP | AR_IMR_RXOK_HP;
        msi_cfg |= AR_INTCFG_MSI_RXOK;
    }
    if (ahp->ah_intr_mitigation_tx) {

        ahp->ah_mask_reg |= AR_IMR_TXINTM | AR_IMR_TXMINTR;
        msi_cfg |= AR_INTCFG_MSI_TXINTM | AR_INTCFG_MSI_TXMINTR;
    } else {
        ahp->ah_mask_reg |= AR_IMR_TXOK;
        msi_cfg |= AR_INTCFG_MSI_TXOK;
    }
    if (opmode == HAL_M_HOSTAP) {
        ahp->ah_mask_reg |= AR_IMR_MIB;
    }

    OS_REG_WRITE(ah, AR_IMR, ahp->ah_mask_reg);
    OS_REG_WRITE(ah, AR_IMR_S2, OS_REG_READ(ah, AR_IMR_S2) | AR_IMR_S2_GTT);
    ahp->ah_mask2Reg = OS_REG_READ(ah, AR_IMR_S2);

    if (ah->ah_config.ath_hal_enable_msi) {

        ahp->ah_msi_reg = OS_REG_READ(ah, AR_HOSTIF_REG(ah, AR_PCIE_MSI));
        ahp->ah_msi_reg |= AR_PCIE_MSI_HW_DBI_WR_EN;
        if (AR_SREV_POSEIDON(ah)) {
            ahp->ah_msi_reg &= AR_PCIE_MSI_HW_INT_PENDING_ADDR_MSI_64;
        } else {
            ahp->ah_msi_reg &= AR_PCIE_MSI_HW_INT_PENDING_ADDR;
        }

        OS_REG_WRITE(ah, AR_INTCFG, msi_cfg);
    }





    OS_REG_WRITE(ah, AR_HOSTIF_REG(ah, AR_INTR_SYNC_CAUSE), 0xFFFFFFFF);


    if (AR_SREV_POSEIDON(ah)) {
        sync_en_def = AR9300_INTR_SYNC_DEF_NO_HOST1_PERR;
    }
    else if (AR_SREV_WASP(ah)) {
        sync_en_def = AR9340_INTR_SYNC_DEFAULT;
    }
    OS_REG_WRITE(ah,
        AR_HOSTIF_REG(ah, AR_INTR_SYNC_ENABLE), sync_en_def);


    OS_REG_WRITE(ah, AR_HOSTIF_REG(ah, AR_INTR_SYNC_MASK), 0);

    OS_REG_WRITE(ah, AR_HOSTIF_REG(ah, AR_INTR_PRIO_ASYNC_ENABLE), 0);
    OS_REG_WRITE(ah, AR_HOSTIF_REG(ah, AR_INTR_PRIO_ASYNC_MASK), 0);
    OS_REG_WRITE(ah, AR_HOSTIF_REG(ah, AR_INTR_PRIO_SYNC_ENABLE), 0);
    OS_REG_WRITE(ah, AR_HOSTIF_REG(ah, AR_INTR_PRIO_SYNC_MASK), 0);
}
