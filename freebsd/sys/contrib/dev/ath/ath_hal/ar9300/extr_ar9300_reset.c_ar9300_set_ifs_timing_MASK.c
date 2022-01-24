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
 int /*<<< orphan*/  AR_D_GBL_IFS_EIFS ; 
 int /*<<< orphan*/  AR_D_GBL_IFS_SLOT ; 
 int /*<<< orphan*/  AR_EIFS_HALF ; 
 int /*<<< orphan*/  AR_EIFS_QUARTER ; 
 int /*<<< orphan*/  AR_RX_LATENCY_HALF ; 
 int /*<<< orphan*/  AR_RX_LATENCY_HALF_FAST_CLOCK ; 
 int /*<<< orphan*/  AR_RX_LATENCY_QUARTER ; 
 int /*<<< orphan*/  AR_RX_LATENCY_QUARTER_FAST_CLOCK ; 
 int /*<<< orphan*/  AR_SLOT_HALF ; 
 int /*<<< orphan*/  AR_SLOT_QUARTER ; 
 int /*<<< orphan*/  AR_TX_LATENCY_HALF ; 
 int /*<<< orphan*/  AR_TX_LATENCY_HALF_FAST_CLOCK ; 
 int /*<<< orphan*/  AR_TX_LATENCY_QUARTER ; 
 int /*<<< orphan*/  AR_TX_LATENCY_QUARTER_FAST_CLOCK ; 
 int /*<<< orphan*/  AR_USEC ; 
 int /*<<< orphan*/  AR_USEC_HALF ; 
 int /*<<< orphan*/  AR_USEC_HALF_FAST_CLOCK ; 
 int /*<<< orphan*/  AR_USEC_QUARTER ; 
 int /*<<< orphan*/  AR_USEC_QUARTER_FAST_CLOCK ; 
 int AR_USEC_RX_LATENCY ; 
 int AR_USEC_TX_LATENCY ; 
 int AR_USEC_USEC ; 
 scalar_t__ FUNC0 (struct ieee80211_channel*) ; 
 scalar_t__ FUNC1 (struct ath_hal*,struct ieee80211_channel*) ; 
 int FUNC2 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct ath_hal*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void 
FUNC6(struct ath_hal *ah, struct ieee80211_channel *chan)
{
    u_int32_t tx_lat, rx_lat, usec, slot, regval, eifs;

    regval = FUNC2(ah, AR_USEC);
    regval &= ~(AR_USEC_RX_LATENCY | AR_USEC_TX_LATENCY | AR_USEC_USEC);
    if (FUNC0(chan)) { /* half rates */
        slot = FUNC5(ah, AR_SLOT_HALF);
        eifs = FUNC5(ah, AR_EIFS_HALF);
        if (FUNC1(ah, chan)) { /* fast clock */
            rx_lat = FUNC4(AR_RX_LATENCY_HALF_FAST_CLOCK, AR_USEC_RX_LATENCY);
            tx_lat = FUNC4(AR_TX_LATENCY_HALF_FAST_CLOCK, AR_USEC_TX_LATENCY);
            usec = FUNC4(AR_USEC_HALF_FAST_CLOCK, AR_USEC_USEC);
        } else {
            rx_lat = FUNC4(AR_RX_LATENCY_HALF, AR_USEC_RX_LATENCY);
            tx_lat = FUNC4(AR_TX_LATENCY_HALF, AR_USEC_TX_LATENCY);
            usec = FUNC4(AR_USEC_HALF, AR_USEC_USEC);
        }
    } else { /* quarter rate */
        slot = FUNC5(ah, AR_SLOT_QUARTER);
        eifs = FUNC5(ah, AR_EIFS_QUARTER);
        if (FUNC1(ah, chan)) { /* fast clock */
            rx_lat = FUNC4(AR_RX_LATENCY_QUARTER_FAST_CLOCK, AR_USEC_RX_LATENCY);
            tx_lat = FUNC4(AR_TX_LATENCY_QUARTER_FAST_CLOCK, AR_USEC_TX_LATENCY);
            usec = FUNC4(AR_USEC_QUARTER_FAST_CLOCK, AR_USEC_USEC);
        } else {
            rx_lat = FUNC4(AR_RX_LATENCY_QUARTER, AR_USEC_RX_LATENCY);
            tx_lat = FUNC4(AR_TX_LATENCY_QUARTER, AR_USEC_TX_LATENCY);
            usec = FUNC4(AR_USEC_QUARTER, AR_USEC_USEC);
        }
    }

    FUNC3(ah, AR_USEC, (usec | regval | tx_lat | rx_lat));
    FUNC3(ah, AR_D_GBL_IFS_SLOT, slot);
    FUNC3(ah, AR_D_GBL_IFS_EIFS, eifs);
}