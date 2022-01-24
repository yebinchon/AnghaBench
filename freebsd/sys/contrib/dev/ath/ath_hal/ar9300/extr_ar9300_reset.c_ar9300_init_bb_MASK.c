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
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_PHY_ACTIVE ; 
 int /*<<< orphan*/  AR_PHY_ACTIVE_EN ; 
 int /*<<< orphan*/  AR_PHY_RX_DELAY ; 
 int AR_PHY_RX_DELAY_DELAY ; 
 scalar_t__ BASE_ACTIVATE_DELAY ; 
 scalar_t__ FUNC0 (struct ieee80211_channel*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC4(struct ath_hal *ah, struct ieee80211_channel *chan)
{
    u_int32_t synth_delay;

    /*
     * Wait for the frequency synth to settle (synth goes on
     * via AR_PHY_ACTIVE_EN).  Read the phy active delay register.
     * Value is in 100ns increments.
     */
    synth_delay = FUNC2(ah, AR_PHY_RX_DELAY) & AR_PHY_RX_DELAY_DELAY;
    if (FUNC0(chan)) {
        synth_delay = (4 * synth_delay) / 22;
    } else {
        synth_delay /= 10;
    }

    /* Activate the PHY (includes baseband activate + synthesizer on) */
    FUNC3(ah, AR_PHY_ACTIVE, AR_PHY_ACTIVE_EN);

    /*
     * There is an issue if the AP starts the calibration before
     * the base band timeout completes.  This could result in the
     * rx_clear false triggering.  As a workaround we add delay an
     * extra BASE_ACTIVATE_DELAY usecs to ensure this condition
     * does not happen.
     */
    FUNC1(synth_delay + BASE_ACTIVATE_DELAY);
}