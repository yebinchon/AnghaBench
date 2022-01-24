#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  zc_cookie; int /*<<< orphan*/  zc_name; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
struct TYPE_11__ {int /*<<< orphan*/  ds_sendstream_lock; int /*<<< orphan*/  ds_sendstreams; } ;
typedef  TYPE_2__ dsl_dataset_t ;
struct TYPE_12__ {scalar_t__ dsa_proc; int /*<<< orphan*/ * dsa_off; int /*<<< orphan*/  dsa_outfd; } ;
typedef  TYPE_3__ dmu_sendarg_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ curproc ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(zfs_cmd_t *zc)
{
	dsl_pool_t *dp;
	dsl_dataset_t *ds;
	dmu_sendarg_t *dsp = NULL;
	int error;

	error = FUNC3(zc->zc_name, FTAG, &dp);
	if (error != 0)
		return (error);

	error = FUNC1(dp, zc->zc_name, FTAG, &ds);
	if (error != 0) {
		FUNC4(dp, FTAG);
		return (error);
	}

	FUNC7(&ds->ds_sendstream_lock);

	/*
	 * Iterate over all the send streams currently active on this dataset.
	 * If there's one which matches the specified file descriptor _and_ the
	 * stream was started by the current process, return the progress of
	 * that stream.
	 */
	for (dsp = FUNC5(&ds->ds_sendstreams); dsp != NULL;
	    dsp = FUNC6(&ds->ds_sendstreams, dsp)) {
		if (dsp->dsa_outfd == zc->zc_cookie &&
		    dsp->dsa_proc == curproc)
			break;
	}

	if (dsp != NULL)
		zc->zc_cookie = *(dsp->dsa_off);
	else
		error = FUNC0(ENOENT);

	FUNC8(&ds->ds_sendstream_lock);
	FUNC2(ds, FTAG);
	FUNC4(dp, FTAG);
	return (error);
}