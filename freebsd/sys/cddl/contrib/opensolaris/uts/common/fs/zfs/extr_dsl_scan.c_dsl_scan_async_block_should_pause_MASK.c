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
typedef  int uint64_t ;
struct TYPE_4__ {scalar_t__ scn_visited_this_txg; int scn_sync_start_time; scalar_t__ scn_async_block_min_time_ms; TYPE_2__* scn_dp; } ;
typedef  TYPE_1__ dsl_scan_t ;
typedef  int boolean_t ;
struct TYPE_5__ {int /*<<< orphan*/  dp_spa; } ;

/* Variables and functions */
 int B_FALSE ; 
 int B_TRUE ; 
 int NANOSEC ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 scalar_t__ zfs_async_block_max_blocks ; 
 scalar_t__ zfs_recover ; 
 int zfs_txg_timeout ; 

__attribute__((used)) static boolean_t
FUNC4(dsl_scan_t *scn)
{
	uint64_t elapsed_nanosecs;

	if (zfs_recover)
		return (B_FALSE);

	if (scn->scn_visited_this_txg >= zfs_async_block_max_blocks)
		return (B_TRUE);

	elapsed_nanosecs = FUNC1() - scn->scn_sync_start_time;
	return (elapsed_nanosecs / NANOSEC > zfs_txg_timeout ||
	    (FUNC0(elapsed_nanosecs) > scn->scn_async_block_min_time_ms &&
	    FUNC3(scn->scn_dp)) ||
	    FUNC2(scn->scn_dp->dp_spa));
}