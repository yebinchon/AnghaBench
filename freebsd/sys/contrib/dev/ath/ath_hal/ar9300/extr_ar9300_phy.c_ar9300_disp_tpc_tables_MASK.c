#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal_9300 {int** txpower; int** txpower_stbc; int /*<<< orphan*/  ah_tx_chainmask; } ;
struct TYPE_6__ {int /*<<< orphan*/  ath_hal_desc_tpc; } ;
struct ath_hal {TYPE_1__ ah_config; } ;
typedef  int int16_t ;
struct TYPE_9__ {struct ieee80211_channel* ah_curchan; } ;
struct TYPE_8__ {int rateCount; TYPE_2__* info; } ;
struct TYPE_7__ {scalar_t__ rateCode; int /*<<< orphan*/  rateKbps; } ;
typedef  TYPE_3__ HAL_RATE_TABLE ;

/* Variables and functions */
 struct ath_hal_9300* FUNC0 (struct ath_hal*) ; 
 TYPE_5__* FUNC1 (struct ath_hal*) ; 
 scalar_t__ AH_TRUE ; 
 int AR9300_MAX_CHAINS ; 
 scalar_t__ AR9300_MCS0_RATE_CODE ; 
 scalar_t__ AR9300_MCS23_RATE_CODE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hal*,struct ieee80211_channel const*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hal*,char*,...) ; 

void FUNC8(struct ath_hal *ah)
{
    struct ath_hal_9300 *ahp = FUNC0(ah);
    const struct ieee80211_channel *chan = FUNC1(ah)->ah_curchan;
    u_int mode = FUNC6(ah, chan);
    const HAL_RATE_TABLE *rt;
    int i, j;

    /* Check whether TPC is enabled */
    if (!ah->ah_config.ath_hal_desc_tpc) {
        FUNC7(ah, "\n TPC Register method in use\n");
        return;
    }
    
    rt = FUNC4(ah, mode);
    FUNC2(rt != NULL);

    FUNC7(ah, "\n===TARGET POWER TABLE===\n");
    for (j = 0 ; j < FUNC3(ahp->ah_tx_chainmask) ; j++ ) {
        for (i = 0; i < rt->rateCount; i++) {
            int16_t txpower[AR9300_MAX_CHAINS]; 
            txpower[j] = ahp->txpower[i][j];
            FUNC7(ah, " Index[%2d] Rate[0x%02x] %6d kbps "
                       "Power (%d Chain) [%2d.%1d dBm]\n",
                       i, rt->info[i].rateCode, rt->info[i].rateKbps,
                       j + 1, txpower[j] / 2, txpower[j]%2 * 5);
        }
    }
    FUNC7(ah, "\n");

    FUNC7(ah, "\n\n===TARGET POWER TABLE with STBC===\n");
    for ( j = 0 ; j < FUNC3(ahp->ah_tx_chainmask) ; j++ ) {
        for (i = 0; i < rt->rateCount; i++) {
            int16_t txpower[AR9300_MAX_CHAINS]; 
            txpower[j] = ahp->txpower_stbc[i][j];

            /* Do not display invalid configurations */
            if ((rt->info[i].rateCode < AR9300_MCS0_RATE_CODE) ||
                (rt->info[i].rateCode > AR9300_MCS23_RATE_CODE) ||
                FUNC5(j, rt->info[i].rateCode) == AH_TRUE) {
                continue;
            }

            FUNC7(ah, " Index[%2d] Rate[0x%02x] %6d kbps "
                       "Power (%d Chain) [%2d.%1d dBm]\n",
                       i, rt->info[i].rateCode , rt->info[i].rateKbps,
                       j + 1, txpower[j] / 2, txpower[j]%2 * 5);
        }
    }
    FUNC7(ah, "\n");
}