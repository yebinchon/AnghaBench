#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u_int32_t ;
struct ath_hal {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_PHY_ERR ; 
 int AR_PHY_ERR_CCK_TIMING ; 
 int AR_PHY_ERR_OFDM_TIMING ; 
 int AR_PHY_ERR_RADAR ; 
 int /*<<< orphan*/  AR_RXCFG ; 
 int AR_RXCFG_ZLFDMA ; 
 int AR_RX_4ADDRESS ; 
 int AR_RX_COMPR_BAR ; 
 int AR_RX_CONTROL_WRAPPER ; 
 int /*<<< orphan*/  AR_RX_FILTER ; 
 int AR_RX_UNCOM_BA_BAR ; 
 scalar_t__ FUNC0 (struct ath_hal*) ; 
 scalar_t__ FUNC1 (struct ath_hal*) ; 
 scalar_t__ FUNC2 (struct ath_hal*) ; 
 scalar_t__ FUNC3 (struct ath_hal*) ; 
 int HAL_RX_FILTER_PHYERR ; 
 int HAL_RX_FILTER_PHYRADAR ; 
 int FUNC4 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 

void
FUNC6(struct ath_hal *ah, u_int32_t bits)
{
    u_int32_t phybits;

    if (FUNC3(ah) || FUNC1(ah)) {
        /* Enable Rx for 4 address frames */
        bits |= AR_RX_4ADDRESS;
    }
    if (FUNC2(ah) || FUNC0(ah)) {
        /* HW fix for rx hang and corruption. */
        bits |= AR_RX_CONTROL_WRAPPER;
    }
    FUNC5(ah, AR_RX_FILTER,
        bits | AR_RX_UNCOM_BA_BAR | AR_RX_COMPR_BAR);
    phybits = 0;
    if (bits & HAL_RX_FILTER_PHYRADAR) {
        phybits |= AR_PHY_ERR_RADAR;
    }
    if (bits & HAL_RX_FILTER_PHYERR) {
        phybits |= AR_PHY_ERR_OFDM_TIMING | AR_PHY_ERR_CCK_TIMING;
    }
    FUNC5(ah, AR_PHY_ERR, phybits);
    if (phybits) {
        FUNC5(ah, AR_RXCFG,
            FUNC4(ah, AR_RXCFG) | AR_RXCFG_ZLFDMA);
    } else {
        FUNC5(ah, AR_RXCFG,
            FUNC4(ah, AR_RXCFG) &~ AR_RXCFG_ZLFDMA);
    }
}