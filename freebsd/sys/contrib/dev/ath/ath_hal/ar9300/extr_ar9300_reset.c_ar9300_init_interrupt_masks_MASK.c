#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32_t ;
struct ath_hal_9300 {int ah_mask_reg; int ah_mask2Reg; int ah_msi_reg; scalar_t__ ah_intr_mitigation_tx; scalar_t__ ah_intr_mitigation_rx; } ;
struct TYPE_2__ {scalar_t__ ath_hal_enable_msi; } ;
struct ath_hal {TYPE_1__ ah_config; } ;
typedef  scalar_t__ HAL_OPMODE ;

/* Variables and functions */
 struct ath_hal_9300* FUNC0 (struct ath_hal*) ; 
 int AR9300_INTR_SYNC_DEFAULT ; 
 int AR9300_INTR_SYNC_DEF_NO_HOST1_PERR ; 
 int AR9340_INTR_SYNC_DEFAULT ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AR_IMR ; 
 int AR_IMR_BCNMISC ; 
 int AR_IMR_MIB ; 
 int AR_IMR_RXERR ; 
 int AR_IMR_RXINTM ; 
 int AR_IMR_RXMINTR ; 
 int AR_IMR_RXOK_HP ; 
 int AR_IMR_RXOK_LP ; 
 int AR_IMR_RXORN ; 
 int /*<<< orphan*/  AR_IMR_S2 ; 
 int AR_IMR_S2_GTT ; 
 int AR_IMR_TXERR ; 
 int AR_IMR_TXINTM ; 
 int AR_IMR_TXMINTR ; 
 int AR_IMR_TXOK ; 
 int AR_IMR_TXURN ; 
 int /*<<< orphan*/  AR_INTCFG ; 
 int AR_INTCFG_MSI_RXINTM ; 
 int AR_INTCFG_MSI_RXMINTR ; 
 int AR_INTCFG_MSI_RXOK ; 
 int AR_INTCFG_MSI_TXINTM ; 
 int AR_INTCFG_MSI_TXMINTR ; 
 int AR_INTCFG_MSI_TXOK ; 
 int /*<<< orphan*/  AR_INTR_PRIO_ASYNC_ENABLE ; 
 int /*<<< orphan*/  AR_INTR_PRIO_ASYNC_MASK ; 
 int /*<<< orphan*/  AR_INTR_PRIO_SYNC_ENABLE ; 
 int /*<<< orphan*/  AR_INTR_PRIO_SYNC_MASK ; 
 int /*<<< orphan*/  AR_INTR_SYNC_CAUSE ; 
 int /*<<< orphan*/  AR_INTR_SYNC_ENABLE ; 
 int /*<<< orphan*/  AR_INTR_SYNC_MASK ; 
 int /*<<< orphan*/  AR_PCIE_MSI ; 
 int AR_PCIE_MSI_HW_DBI_WR_EN ; 
 int AR_PCIE_MSI_HW_INT_PENDING_ADDR ; 
 int AR_PCIE_MSI_HW_INT_PENDING_ADDR_MSI_64 ; 
 scalar_t__ FUNC2 (struct ath_hal*) ; 
 scalar_t__ FUNC3 (struct ath_hal*) ; 
 scalar_t__ HAL_M_HOSTAP ; 
 int FUNC4 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void
FUNC6(struct ath_hal *ah, HAL_OPMODE opmode)
{
    struct ath_hal_9300 *ahp = FUNC0(ah);
    u_int32_t msi_cfg = 0;
    u_int32_t sync_en_def = AR9300_INTR_SYNC_DEFAULT;

    /*
     * Setup interrupt handling.  Note that ar9300_reset_tx_queue
     * manipulates the secondary IMR's as queues are enabled
     * and disabled.  This is done with RMW ops to insure the
     * settings we make here are preserved.
     */
    ahp->ah_mask_reg =
        AR_IMR_TXERR | AR_IMR_TXURN |
        AR_IMR_RXERR | AR_IMR_RXORN |
        AR_IMR_BCNMISC;

    if (ahp->ah_intr_mitigation_rx) {
        /* enable interrupt mitigation for rx */
        ahp->ah_mask_reg |= AR_IMR_RXINTM | AR_IMR_RXMINTR | AR_IMR_RXOK_HP;
        msi_cfg |= AR_INTCFG_MSI_RXINTM | AR_INTCFG_MSI_RXMINTR;
    } else {
        ahp->ah_mask_reg |= AR_IMR_RXOK_LP | AR_IMR_RXOK_HP;
        msi_cfg |= AR_INTCFG_MSI_RXOK;
    }
    if (ahp->ah_intr_mitigation_tx) {
        /* enable interrupt mitigation for tx */
        ahp->ah_mask_reg |= AR_IMR_TXINTM | AR_IMR_TXMINTR;
        msi_cfg |= AR_INTCFG_MSI_TXINTM | AR_INTCFG_MSI_TXMINTR;
    } else {
        ahp->ah_mask_reg |= AR_IMR_TXOK;
        msi_cfg |= AR_INTCFG_MSI_TXOK;
    }
    if (opmode == HAL_M_HOSTAP) {
        ahp->ah_mask_reg |= AR_IMR_MIB;
    }

    FUNC5(ah, AR_IMR, ahp->ah_mask_reg);
    FUNC5(ah, AR_IMR_S2, FUNC4(ah, AR_IMR_S2) | AR_IMR_S2_GTT);
    ahp->ah_mask2Reg = FUNC4(ah, AR_IMR_S2);

    if (ah->ah_config.ath_hal_enable_msi) {
        /* Cache MSI register value */
        ahp->ah_msi_reg = FUNC4(ah, FUNC1(ah, AR_PCIE_MSI));
        ahp->ah_msi_reg |= AR_PCIE_MSI_HW_DBI_WR_EN;
        if (FUNC2(ah)) {
            ahp->ah_msi_reg &= AR_PCIE_MSI_HW_INT_PENDING_ADDR_MSI_64;
        } else {
            ahp->ah_msi_reg &= AR_PCIE_MSI_HW_INT_PENDING_ADDR;
        }
        /* Program MSI configuration */
        FUNC5(ah, AR_INTCFG, msi_cfg);
    }

    /*
     * debug - enable to see all synchronous interrupts status
     */
    /* Clear any pending sync cause interrupts */
    FUNC5(ah, FUNC1(ah, AR_INTR_SYNC_CAUSE), 0xFFFFFFFF);

    /* Allow host interface sync interrupt sources to set cause bit */
    if (FUNC2(ah)) {
        sync_en_def = AR9300_INTR_SYNC_DEF_NO_HOST1_PERR;
    }
    else if (FUNC3(ah)) {
        sync_en_def = AR9340_INTR_SYNC_DEFAULT;
    }
    FUNC5(ah,
        FUNC1(ah, AR_INTR_SYNC_ENABLE), sync_en_def);
    
    /* _Disable_ host interface sync interrupt when cause bits set */
    FUNC5(ah, FUNC1(ah, AR_INTR_SYNC_MASK), 0);

    FUNC5(ah, FUNC1(ah, AR_INTR_PRIO_ASYNC_ENABLE), 0);
    FUNC5(ah, FUNC1(ah, AR_INTR_PRIO_ASYNC_MASK), 0);
    FUNC5(ah, FUNC1(ah, AR_INTR_PRIO_SYNC_ENABLE), 0);
    FUNC5(ah, FUNC1(ah, AR_INTR_PRIO_SYNC_MASK), 0);
}