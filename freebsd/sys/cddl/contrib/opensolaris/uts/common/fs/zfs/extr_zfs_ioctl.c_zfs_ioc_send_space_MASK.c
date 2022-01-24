#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  zbm_creation_txg; } ;
typedef  TYPE_1__ zfs_bookmark_phys_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int FUNC10 (int /*<<< orphan*/ *,char*,char**) ; 
 int /*<<< orphan*/ * FUNC11 (char*,char) ; 

__attribute__((used)) static int
FUNC12(const char *snapname, nvlist_t *innvl, nvlist_t *outnvl)
{
	dsl_pool_t *dp;
	dsl_dataset_t *tosnap;
	int error;
	char *fromname;
	boolean_t compressok;
	uint64_t space;

	error = FUNC6(snapname, FTAG, &dp);
	if (error != 0)
		return (error);

	error = FUNC4(dp, snapname, FTAG, &tosnap);
	if (error != 0) {
		FUNC7(dp, FTAG);
		return (error);
	}

	compressok = FUNC9(innvl, "compressok");

	error = FUNC10(innvl, "from", &fromname);
	if (error == 0) {
		if (FUNC11(fromname, '@') != NULL) {
			/*
			 * If from is a snapshot, hold it and use the more
			 * efficient dmu_send_estimate to estimate send space
			 * size using deadlists.
			 */
			dsl_dataset_t *fromsnap;
			error = FUNC4(dp, fromname, FTAG, &fromsnap);
			if (error != 0)
				goto out;
			error = FUNC1(tosnap, fromsnap, compressok,
			    &space);
			FUNC5(fromsnap, FTAG);
		} else if (FUNC11(fromname, '#') != NULL) {
			/*
			 * If from is a bookmark, fetch the creation TXG of the
			 * snapshot it was created from and use that to find
			 * blocks that were born after it.
			 */
			zfs_bookmark_phys_t frombm;

			error = FUNC3(dp, fromname, tosnap,
			    &frombm);
			if (error != 0)
				goto out;
			error = FUNC2(tosnap,
			    frombm.zbm_creation_txg, compressok, &space);
		} else {
			/*
			 * from is not properly formatted as a snapshot or
			 * bookmark
			 */
			error = FUNC0(EINVAL);
			goto out;
		}
	} else {
		/*
		 * If estimating the size of a full send, use dmu_send_estimate.
		 */
		error = FUNC1(tosnap, NULL, compressok, &space);
	}

	FUNC8(outnvl, "space", space);

out:
	FUNC5(tosnap, FTAG);
	FUNC7(dp, FTAG);
	return (error);
}