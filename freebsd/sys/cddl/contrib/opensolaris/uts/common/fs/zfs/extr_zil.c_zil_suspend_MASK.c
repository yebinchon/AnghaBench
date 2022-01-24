#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int zl_suspend; int /*<<< orphan*/  zl_lock; int /*<<< orphan*/  zl_cv_suspend; scalar_t__ zl_suspending; int /*<<< orphan*/  zl_dmu_pool; TYPE_2__* zl_header; } ;
typedef  TYPE_1__ zilog_t ;
struct TYPE_7__ {int zh_flags; int /*<<< orphan*/  zh_log; } ;
typedef  TYPE_2__ zil_header_t ;
typedef  int /*<<< orphan*/  objset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int /*<<< orphan*/  EBUSY ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int ZIL_REPLAY_NEEDED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  suspend_tag ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

int
FUNC18(const char *osname, void **cookiep)
{
	objset_t *os;
	zilog_t *zilog;
	const zil_header_t *zh;
	int error;

	error = FUNC6(osname, suspend_tag, &os);
	if (error != 0)
		return (error);
	zilog = FUNC9(os);

	FUNC12(&zilog->zl_lock);
	zh = zilog->zl_header;

	if (zh->zh_flags & ZIL_REPLAY_NEEDED) {		/* unplayed log */
		FUNC13(&zilog->zl_lock);
		FUNC8(os, suspend_tag);
		return (FUNC2(EBUSY));
	}

	/*
	 * Don't put a long hold in the cases where we can avoid it.  This
	 * is when there is no cookie so we are doing a suspend & resume
	 * (i.e. called from zil_vdev_offline()), and there's nothing to do
	 * for the suspend because it's already suspended, or there's no ZIL.
	 */
	if (cookiep == NULL && !zilog->zl_suspending &&
	    (zilog->zl_suspend > 0 || FUNC1(&zh->zh_log))) {
		FUNC13(&zilog->zl_lock);
		FUNC8(os, suspend_tag);
		return (0);
	}

	FUNC10(FUNC5(os), suspend_tag);
	FUNC11(FUNC7(os), suspend_tag);

	zilog->zl_suspend++;

	if (zilog->zl_suspend > 1) {
		/*
		 * Someone else is already suspending it.
		 * Just wait for them to finish.
		 */

		while (zilog->zl_suspending)
			FUNC4(&zilog->zl_cv_suspend, &zilog->zl_lock);
		FUNC13(&zilog->zl_lock);

		if (cookiep == NULL)
			FUNC17(os);
		else
			*cookiep = os;
		return (0);
	}

	/*
	 * If there is no pointer to an on-disk block, this ZIL must not
	 * be active (e.g. filesystem not mounted), so there's nothing
	 * to clean up.
	 */
	if (FUNC1(&zh->zh_log)) {
		FUNC0(cookiep != NULL); /* fast path already handled */

		*cookiep = os;
		FUNC13(&zilog->zl_lock);
		return (0);
	}

	zilog->zl_suspending = B_TRUE;
	FUNC13(&zilog->zl_lock);

	/*
	 * We need to use zil_commit_impl to ensure we wait for all
	 * LWB_STATE_OPENED and LWB_STATE_ISSUED lwb's to be committed
	 * to disk before proceeding. If we used zil_commit instead, it
	 * would just call txg_wait_synced(), because zl_suspend is set.
	 * txg_wait_synced() doesn't wait for these lwb's to be
	 * LWB_STATE_FLUSH_DONE before returning.
	 */
	FUNC15(zilog, 0);

	/*
	 * Now that we've ensured all lwb's are LWB_STATE_FLUSH_DONE, we
	 * use txg_wait_synced() to ensure the data from the zilog has
	 * migrated to the main pool before calling zil_destroy().
	 */
	FUNC14(zilog->zl_dmu_pool, 0);

	FUNC16(zilog, B_FALSE);

	FUNC12(&zilog->zl_lock);
	zilog->zl_suspending = B_FALSE;
	FUNC3(&zilog->zl_cv_suspend);
	FUNC13(&zilog->zl_lock);

	if (cookiep == NULL)
		FUNC17(os);
	else
		*cookiep = os;
	return (0);
}