
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int ;
struct rate_power_tbl {int rateIdx; int rateCode; int chain1; int chain2; int chain3; int stbc; int * txpower_stbc; int * txpower; int rateKbps; } ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal_9300 {int ** txpower_stbc; int ah_tx_chainmask; int ** txpower; } ;
struct TYPE_5__ {int ath_hal_desc_tpc; } ;
struct ath_hal {TYPE_1__ ah_config; } ;
struct TYPE_8__ {struct ieee80211_channel* ah_curchan; } ;
struct TYPE_7__ {int rateCount; TYPE_2__* info; } ;
struct TYPE_6__ {int rateCode; int rateKbps; } ;
typedef TYPE_3__ HAL_RATE_TABLE ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;
 TYPE_4__* AH_PRIVATE (struct ath_hal*) ;
 scalar_t__ AH_TRUE ;
 scalar_t__ AR9300_MCS0_RATE_CODE ;
 scalar_t__ AR9300_MCS23_RATE_CODE ;
 int HALASSERT (int ) ;
 int OS_MEMZERO (int*,int) ;
 int ar9300_get_ntxchains (int ) ;
 scalar_t__ ar9300_get_rate_table (struct ath_hal*,int ) ;
 scalar_t__ ar9300_invalid_stbc_cfg (int,scalar_t__) ;
 int ath_hal_get_curmode (struct ath_hal*,struct ieee80211_channel const*) ;
 scalar_t__ ath_hal_malloc (int) ;
 int ath_hal_printf (struct ath_hal*,char*) ;

u_int8_t *ar9300_get_tpc_tables(struct ath_hal *ah)
{
    struct ath_hal_9300 *ahp = AH9300(ah);
    const struct ieee80211_channel *chan = AH_PRIVATE(ah)->ah_curchan;
    u_int mode = ath_hal_get_curmode(ah, chan);
    const HAL_RATE_TABLE *rt;
    u_int8_t *data;
    struct rate_power_tbl *table;
    int i, j;


    if (! ah->ah_config.ath_hal_desc_tpc) {
        ath_hal_printf(ah, "\n TPC Register method in use\n");
        return ((void*)0);
    }

    rt = (const HAL_RATE_TABLE *)ar9300_get_rate_table(ah, mode);
    HALASSERT(rt != ((void*)0));

    data = (u_int8_t *)ath_hal_malloc(
                       1 + rt->rateCount * sizeof(struct rate_power_tbl));
    if (data == ((void*)0))
        return ((void*)0);

    OS_MEMZERO(data, 1 + rt->rateCount * sizeof(struct rate_power_tbl));

    *data = rt->rateCount;
    table = (struct rate_power_tbl *)&data[1];

    for (j = 0 ; j < ar9300_get_ntxchains(ahp->ah_tx_chainmask) ; j++ ) {
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

    for ( j = 0 ; j < ar9300_get_ntxchains(ahp->ah_tx_chainmask) ; j++ ) {
        for (i = 0; i < rt->rateCount; i++) {

            if ((rt->info[i].rateCode < AR9300_MCS0_RATE_CODE) ||
                (rt->info[i].rateCode > AR9300_MCS23_RATE_CODE) ||
                ar9300_invalid_stbc_cfg(j, rt->info[i].rateCode) == AH_TRUE) {
                continue;
            }

            table[i].stbc = 1;
            table[i].txpower_stbc[j] = ahp->txpower_stbc[i][j];
        }
    }

    return data;

}
