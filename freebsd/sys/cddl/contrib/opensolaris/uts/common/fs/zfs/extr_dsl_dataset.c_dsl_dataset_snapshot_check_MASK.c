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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  nm ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
struct TYPE_6__ {int /*<<< orphan*/  ds_dir; } ;
typedef  TYPE_1__ dsl_dataset_t ;
struct TYPE_7__ {int /*<<< orphan*/ * ddsa_errors; int /*<<< orphan*/ * ddsa_snaps; int /*<<< orphan*/  ddsa_cr; } ;
typedef  TYPE_2__ dsl_dataset_snapshot_arg_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENAMETOOLONG ; 
 int /*<<< orphan*/  FTAG ; 
 int MAXPATHLEN ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  ZFS_PROP_SNAPSHOT_LIMIT ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,char*,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC15 (int /*<<< orphan*/ *) ; 
 char* FUNC16 (char*,char) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*,int) ; 
 int FUNC18 (char*) ; 
 char* FUNC19 (char*,char) ; 

int
FUNC20(void *arg, dmu_tx_t *tx)
{
	dsl_dataset_snapshot_arg_t *ddsa = arg;
	dsl_pool_t *dp = FUNC3(tx);
	nvpair_t *pair;
	int rv = 0;

	/*
	 * Pre-compute how many total new snapshots will be created for each
	 * level in the tree and below. This is needed for validating the
	 * snapshot limit when either taking a recursive snapshot or when
	 * taking multiple snapshots.
	 *
	 * The problem is that the counts are not actually adjusted when
	 * we are checking, only when we finally sync. For a single snapshot,
	 * this is easy, the count will increase by 1 at each node up the tree,
	 * but its more complicated for the recursive/multiple snapshot case.
	 *
	 * The dsl_fs_ss_limit_check function does recursively check the count
	 * at each level up the tree but since it is validating each snapshot
	 * independently we need to be sure that we are validating the complete
	 * count for the entire set of snapshots. We do this by rolling up the
	 * counts for each component of the name into an nvlist and then
	 * checking each of those cases with the aggregated count.
	 *
	 * This approach properly handles not only the recursive snapshot
	 * case (where we get all of those on the ddsa_snaps list) but also
	 * the sibling case (e.g. snapshot a/b and a/c so that we will also
	 * validate the limit on 'a' using a count of 2).
	 *
	 * We validate the snapshot names in the third loop and only report
	 * name errors once.
	 */
	if (FUNC2(tx)) {
		nvlist_t *cnt_track = NULL;
		cnt_track = FUNC10();

		/* Rollup aggregated counts into the cnt_track list */
		for (pair = FUNC14(ddsa->ddsa_snaps, NULL);
		    pair != NULL;
		    pair = FUNC14(ddsa->ddsa_snaps, pair)) {
			char *pdelim;
			uint64_t val;
			char nm[MAXPATHLEN];

			(void) FUNC17(nm, FUNC15(pair), sizeof (nm));
			pdelim = FUNC16(nm, '@');
			if (pdelim == NULL)
				continue;
			*pdelim = '\0';

			do {
				if (FUNC13(cnt_track, nm,
				    &val) == 0) {
					/* update existing entry */
					FUNC9(cnt_track, nm,
					    val + 1);
				} else {
					/* add to list */
					FUNC9(cnt_track, nm, 1);
				}

				pdelim = FUNC19(nm, '/');
				if (pdelim != NULL)
					*pdelim = '\0';
			} while (pdelim != NULL);
		}

		/* Check aggregated counts at each level */
		for (pair = FUNC14(cnt_track, NULL);
		    pair != NULL; pair = FUNC14(cnt_track, pair)) {
			int error = 0;
			char *name;
			uint64_t cnt = 0;
			dsl_dataset_t *ds;

			name = FUNC15(pair);
			cnt = FUNC11(pair);
			FUNC0(cnt > 0);

			error = FUNC4(dp, name, FTAG, &ds);
			if (error == 0) {
				error = FUNC7(ds->ds_dir, cnt,
				    ZFS_PROP_SNAPSHOT_LIMIT, NULL,
				    ddsa->ddsa_cr);
				FUNC5(ds, FTAG);
			}

			if (error != 0) {
				if (ddsa->ddsa_errors != NULL)
					FUNC8(ddsa->ddsa_errors,
					    name, error);
				rv = error;
				/* only report one error for this check */
				break;
			}
		}
		FUNC12(cnt_track);
	}

	for (pair = FUNC14(ddsa->ddsa_snaps, NULL);
	    pair != NULL; pair = FUNC14(ddsa->ddsa_snaps, pair)) {
		int error = 0;
		dsl_dataset_t *ds;
		char *name, *atp;
		char dsname[ZFS_MAX_DATASET_NAME_LEN];

		name = FUNC15(pair);
		if (FUNC18(name) >= ZFS_MAX_DATASET_NAME_LEN)
			error = FUNC1(ENAMETOOLONG);
		if (error == 0) {
			atp = FUNC16(name, '@');
			if (atp == NULL)
				error = FUNC1(EINVAL);
			if (error == 0)
				(void) FUNC17(dsname, name, atp - name + 1);
		}
		if (error == 0)
			error = FUNC4(dp, dsname, FTAG, &ds);
		if (error == 0) {
			/* passing 0/NULL skips dsl_fs_ss_limit_check */
			error = FUNC6(ds,
			    atp + 1, tx, B_FALSE, 0, NULL);
			FUNC5(ds, FTAG);
		}

		if (error != 0) {
			if (ddsa->ddsa_errors != NULL) {
				FUNC8(ddsa->ddsa_errors,
				    name, error);
			}
			rv = error;
		}
	}

	return (rv);
}