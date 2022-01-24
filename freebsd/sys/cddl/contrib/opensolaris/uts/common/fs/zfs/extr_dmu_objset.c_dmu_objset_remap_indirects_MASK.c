#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long long uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  last_remap_txg ;
struct TYPE_9__ {int /*<<< orphan*/  dd_object; } ;
typedef  TYPE_1__ dsl_dir_t ;
struct TYPE_10__ {TYPE_1__* ds_dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  DD_FIELD_LAST_REMAP_TXG ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOTSUP ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPA_FEATURE_OBSOLETE_COUNTS ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,unsigned long long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (TYPE_1__*) ; 
 int FUNC12 (TYPE_1__*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long long FUNC15 (int /*<<< orphan*/ ) ; 
 unsigned long long FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,unsigned long long*) ; 

int
FUNC19(const char *fsname)
{
	int error = 0;
	objset_t *os = NULL;
	uint64_t last_removed_txg;
	uint64_t remap_start_txg;
	dsl_dir_t *dd;

	error = FUNC2(fsname, FTAG, &os);
	if (error != 0) {
		return (error);
	}
	dd = FUNC1(os)->ds_dir;

	if (!FUNC14(FUNC6(os),
	    SPA_FEATURE_OBSOLETE_COUNTS)) {
		FUNC4(os, FTAG);
		return (FUNC0(ENOTSUP));
	}

	if (FUNC7(FUNC1(os))) {
		FUNC4(os, FTAG);
		return (FUNC0(EINVAL));
	}

	/*
	 * If there has not been a removal, we're done.
	 */
	last_removed_txg = FUNC15(FUNC6(os));
	if (last_removed_txg == -1ULL) {
		FUNC4(os, FTAG);
		return (0);
	}

	/*
	 * If we have remapped since the last removal, we're done.
	 */
	if (FUNC11(dd)) {
		uint64_t last_remap_txg;
		if (FUNC18(FUNC17(FUNC6(os)),
		    dd->dd_object, DD_FIELD_LAST_REMAP_TXG,
		    sizeof (last_remap_txg), 1, &last_remap_txg) == 0 &&
		    last_remap_txg > last_removed_txg) {
			FUNC4(os, FTAG);
			return (0);
		}
	}

	FUNC8(FUNC1(os), FTAG);
	FUNC13(FUNC3(os), FTAG);

	remap_start_txg = FUNC16(FUNC6(os));
	error = FUNC5(os, last_removed_txg);
	if (error == 0) {
		/*
		 * We update the last_remap_txg to be the start txg so that
		 * we can guarantee that every block older than last_remap_txg
		 * that can be remapped has been remapped.
		 */
		error = FUNC12(dd, remap_start_txg);
	}

	FUNC9(FUNC1(os), FTAG);
	FUNC10(FUNC1(os), FTAG);

	return (error);
}