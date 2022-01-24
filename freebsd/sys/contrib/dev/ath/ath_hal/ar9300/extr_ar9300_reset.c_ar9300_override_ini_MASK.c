#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32_t ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;
struct TYPE_3__ {scalar_t__ halIsrRacSupport; } ;
struct TYPE_4__ {TYPE_1__ ah_caps; } ;
typedef  TYPE_1__ HAL_CAPABILITIES ;

/* Variables and functions */
 scalar_t__ AH_FALSE ; 
 TYPE_2__* FUNC0 (struct ath_hal*) ; 
 int AR_ADHOC_MCAST_KEYID_ENABLE ; 
 int AR_AGG_WEP_ENABLE ; 
 int AR_BUG_58603_FIX_ENABLE ; 
 int /*<<< orphan*/  AR_CFG ; 
 int /*<<< orphan*/  AR_CFG_MISSING_TX_INTR_FIX_ENABLE ; 
 int AR_DIAG_RX_ABORT ; 
 int AR_DIAG_RX_DIS ; 
 int /*<<< orphan*/  AR_DIAG_SW ; 
 int /*<<< orphan*/  AR_PCU_MISC_MODE2 ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hal*,int) ; 

__attribute__((used)) static inline void
FUNC6(struct ath_hal *ah, struct ieee80211_channel *chan)
{
    u_int32_t val;
    HAL_CAPABILITIES *p_cap = &FUNC0(ah)->ah_caps;

    /*
     * Set the RX_ABORT and RX_DIS and clear it only after
     * RXE is set for MAC. This prevents frames with
     * corrupted descriptor status.
     */
    FUNC3(ah, AR_DIAG_SW, (AR_DIAG_RX_DIS | AR_DIAG_RX_ABORT));
    /*
     * For Merlin and above, there is a new feature that allows Multicast
     * search based on both MAC Address and Key ID.
     * By default, this feature is enabled.
     * But since the driver is not using this feature, we switch it off;
     * otherwise multicast search based on MAC addr only will fail.
     */
    val = FUNC2(ah, AR_PCU_MISC_MODE2) & (~AR_ADHOC_MCAST_KEYID_ENABLE);
    FUNC4(ah, AR_PCU_MISC_MODE2,
        val | AR_BUG_58603_FIX_ENABLE | AR_AGG_WEP_ENABLE);


    /* Osprey revision specific configuration */

    /* Osprey 2.0+ - if SW RAC support is disabled, must also disable
     * the Osprey 2.0 hardware RAC fix.
     */
    if (p_cap->halIsrRacSupport == AH_FALSE) {
        FUNC1(ah, AR_CFG, AR_CFG_MISSING_TX_INTR_FIX_ENABLE);
    }

    /* try to enable old pal if it is needed for h/w green tx */
    FUNC5(ah, 1);
}