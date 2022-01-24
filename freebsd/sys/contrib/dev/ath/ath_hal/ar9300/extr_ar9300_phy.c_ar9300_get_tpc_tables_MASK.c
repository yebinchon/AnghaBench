#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int8_t ;
typedef  int /*<<< orphan*/  u_int ;
struct rate_power_tbl {int rateIdx; int rateCode; int chain1; int chain2; int chain3; int stbc; int /*<<< orphan*/ * txpower_stbc; int /*<<< orphan*/ * txpower; int /*<<< orphan*/  rateKbps; } ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal_9300 {int /*<<< orphan*/ ** txpower_stbc; int /*<<< orphan*/  ah_tx_chainmask; int /*<<< orphan*/ ** txpower; } ;
struct TYPE_5__ {int /*<<< orphan*/  ath_hal_desc_tpc; } ;
struct ath_hal {TYPE_1__ ah_config; } ;
struct TYPE_8__ {struct ieee80211_channel* ah_curchan; } ;
struct TYPE_7__ {int rateCount; TYPE_2__* info; } ;
struct TYPE_6__ {int rateCode; int /*<<< orphan*/  rateKbps; } ;
typedef  TYPE_3__ HAL_RATE_TABLE ;

/* Variables and functions */
 struct ath_hal_9300* FUNC0 (struct ath_hal*) ; 
 TYPE_4__* FUNC1 (struct ath_hal*) ; 
 scalar_t__ AH_TRUE ; 
 scalar_t__ AR9300_MCS0_RATE_CODE ; 
 scalar_t__ AR9300_MCS23_RATE_CODE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hal*,struct ieee80211_channel const*) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_hal*,char*) ; 

u_int8_t *FUNC10(struct ath_hal *ah)
{
    struct ath_hal_9300 *ahp = FUNC0(ah);
    const struct ieee80211_channel *chan = FUNC1(ah)->ah_curchan;
    u_int mode = FUNC7(ah, chan);
    const HAL_RATE_TABLE *rt;
    u_int8_t *data;
    struct rate_power_tbl *table;
    int i, j;

    /* Check whether TPC is enabled */
    if (! ah->ah_config.ath_hal_desc_tpc) {
        FUNC9(ah, "\n TPC Register method in use\n");
        return NULL;
    }
    
    rt = (const HAL_RATE_TABLE *)FUNC5(ah, mode);
    FUNC2(rt != NULL);

    data = (u_int8_t *)FUNC8(
                       1 + rt->rateCount * sizeof(struct rate_power_tbl));
    if (data == NULL)
        return NULL;

    FUNC3(data, 1 + rt->rateCount * sizeof(struct rate_power_tbl));
    /* store the rate count at the beginning */
    *data = rt->rateCount;
    table = (struct rate_power_tbl *)&data[1];

    for (j = 0 ; j < FUNC4(ahp->ah_tx_chainmask) ; j++ ) {
        for (i = 0; i < rt->rateCount; i++) {
            table[i].rateIdx = i;
            table[i].rateCode = rt->info[i].rateCode;
            table[i].rateKbps = rt->info[i].rateKbps;
            switch (j) {
            case 0:
                table[i].chain1 = rt->info[i].rateCode <= 0x87 ? 1 : 0;
                break;
            case 1:
                table[i].chain2 = rt->info[i].rateCode <= 0x8f ? 1 : 0;
                break;
            case 2:
                table[i].chain3 = 1;
                break;
            default:
                break;
            }
            if ((j == 0 && table[i].chain1) ||
                (j == 1 && table[i].chain2) ||
                (j == 2 && table[i].chain3))
                table[i].txpower[j] = ahp->txpower[i][j];
        }
    }

    for ( j = 0 ; j < FUNC4(ahp->ah_tx_chainmask) ; j++ ) {
        for (i = 0; i < rt->rateCount; i++) {
            /* Do not display invalid configurations */
            if ((rt->info[i].rateCode < AR9300_MCS0_RATE_CODE) ||
                (rt->info[i].rateCode > AR9300_MCS23_RATE_CODE) ||
                FUNC6(j, rt->info[i].rateCode) == AH_TRUE) {
                continue;
            }

            table[i].stbc = 1;
            table[i].txpower_stbc[j] = ahp->txpower_stbc[i][j];
        }
    }

    return data;
    /* the caller is responsible to free data */
}