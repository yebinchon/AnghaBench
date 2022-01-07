
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int beacons; int rts_good; int fcs_bad; int rts_bad; int ackrcv_bad; } ;
struct TYPE_4__ {TYPE_2__ ast_mibstats; } ;
struct ath_hal_9300 {TYPE_1__ ah_stats; } ;
struct ath_hal {int dummy; } ;
typedef TYPE_2__ HAL_MIB_STATS ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;

void
ar9300_get_mib_mac_stats(struct ath_hal *ah, HAL_MIB_STATS* stats)
{
    struct ath_hal_9300 *ahp = AH9300(ah);
    HAL_MIB_STATS* istats = &ahp->ah_stats.ast_mibstats;

    stats->ackrcv_bad = istats->ackrcv_bad;
    stats->rts_bad = istats->rts_bad;
    stats->fcs_bad = istats->fcs_bad;
    stats->rts_good = istats->rts_good;
    stats->beacons = istats->beacons;
}
