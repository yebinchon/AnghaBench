#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_7__ {scalar_t__ dst_error; int dst_space; scalar_t__ (* dst_checkfunc ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;scalar_t__ dst_nowaiter; int /*<<< orphan*/  dst_arg; int /*<<< orphan*/  (* dst_syncfunc ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  dst_space_check; TYPE_2__* dst_pool; } ;
typedef  TYPE_1__ dsl_sync_task_t ;
struct TYPE_8__ {int /*<<< orphan*/  dp_config_rwlock; int /*<<< orphan*/  dp_root_dir; } ;
typedef  TYPE_2__ dsl_pool_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_9__ {scalar_t__ dd_used_bytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  ENOSPC ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  RW_WRITER ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZFS_SPACE_CHECK_NONE ; 
 TYPE_6__* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC9(dsl_sync_task_t *dst, dmu_tx_t *tx)
{
	dsl_pool_t *dp = dst->dst_pool;

	FUNC0(dst->dst_error);

	/*
	 * Check for sufficient space.
	 *
	 * When the sync task was created, the caller specified the
	 * type of space checking required.  See the comment in
	 * zfs_space_check_t for details on the semantics of each
	 * type of space checking.
	 *
	 * We just check against what's on-disk; we don't want any
	 * in-flight accounting to get in our way, because open context
	 * may have already used up various in-core limits
	 * (arc_tempreserve, dsl_pool_tempreserve).
	 */
	if (dst->dst_space_check != ZFS_SPACE_CHECK_NONE) {
		uint64_t quota = FUNC3(dp,
		    dst->dst_space_check);
		uint64_t used = FUNC2(dp->dp_root_dir)->dd_used_bytes;

		/* MOS space is triple-dittoed, so we multiply by 3. */
		if (used + dst->dst_space * 3 > quota) {
			dst->dst_error = FUNC1(ENOSPC);
			if (dst->dst_nowaiter)
				FUNC4(dst, sizeof (*dst));
			return;
		}
	}

	/*
	 * Check for errors by calling checkfunc.
	 */
	FUNC5(&dp->dp_config_rwlock, RW_WRITER, FTAG);
	dst->dst_error = dst->dst_checkfunc(dst->dst_arg, tx);
	if (dst->dst_error == 0)
		dst->dst_syncfunc(dst->dst_arg, tx);
	FUNC6(&dp->dp_config_rwlock, FTAG);
	if (dst->dst_nowaiter)
		FUNC4(dst, sizeof (*dst));
}