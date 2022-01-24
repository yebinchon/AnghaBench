#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  beacons; int /*<<< orphan*/  rts_good; int /*<<< orphan*/  fcs_bad; int /*<<< orphan*/  rts_bad; int /*<<< orphan*/  ackrcv_bad; } ;
struct TYPE_4__ {TYPE_2__ ast_mibstats; } ;
struct ath_hal_9300 {TYPE_1__ ah_stats; } ;
struct ath_hal {int dummy; } ;
typedef  TYPE_2__ HAL_MIB_STATS ;

/* Variables and functions */
 struct ath_hal_9300* FUNC0 (struct ath_hal*) ; 

void
FUNC1(struct ath_hal *ah, HAL_MIB_STATS* stats)
{
    struct ath_hal_9300 *ahp = FUNC0(ah);
    HAL_MIB_STATS* istats = &ahp->ah_stats.ast_mibstats;

    stats->ackrcv_bad = istats->ackrcv_bad;
    stats->rts_bad    = istats->rts_bad;
    stats->fcs_bad    = istats->fcs_bad;
    stats->rts_good   = istats->rts_good;
    stats->beacons    = istats->beacons;
}