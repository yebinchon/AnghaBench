#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  zprop_source_t ;
typedef  scalar_t__ zfs_prop_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  CE_PANIC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ DATA_TYPE_NVLIST ; 
 scalar_t__ DATA_TYPE_STRING ; 
 scalar_t__ DATA_TYPE_UINT64 ; 
 scalar_t__ DATA_TYPE_UINT64_ARRAY ; 
 int /*<<< orphan*/  EINVAL ; 
#define  PROP_TYPE_INDEX 130 
#define  PROP_TYPE_NUMBER 129 
#define  PROP_TYPE_STRING 128 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ZPROP_INVAL ; 
 int /*<<< orphan*/  ZPROP_VALUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*,char const*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 char* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (char const*) ; 
 int FUNC21 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__,int /*<<< orphan*/ ,char const**) ; 
 int FUNC23 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC24 (char const*) ; 
 scalar_t__ FUNC25 (char const*) ; 

int
FUNC26(const char *dsname, zprop_source_t source, nvlist_t *nvl,
    nvlist_t *errlist)
{
	nvpair_t *pair;
	nvpair_t *propval;
	int rv = 0;
	uint64_t intval;
	char *strval;
	nvlist_t *genericnvl = FUNC7();
	nvlist_t *retrynvl = FUNC7();

retry:
	pair = NULL;
	while ((pair = FUNC16(nvl, pair)) != NULL) {
		const char *propname = FUNC17(pair);
		zfs_prop_t prop = FUNC20(propname);
		int err = 0;

		/* decode the property value */
		propval = pair;
		if (FUNC18(pair) == DATA_TYPE_NVLIST) {
			nvlist_t *attrs;
			attrs = FUNC9(pair);
			if (FUNC15(attrs, ZPROP_VALUE,
			    &propval) != 0)
				err = FUNC1(EINVAL);
		}

		/* Validate value type */
		if (err == 0 && prop == ZPROP_INVAL) {
			if (FUNC24(propname)) {
				if (FUNC18(propval) != DATA_TYPE_STRING)
					err = FUNC1(EINVAL);
			} else if (FUNC25(propname)) {
				if (FUNC18(propval) !=
				    DATA_TYPE_UINT64_ARRAY)
					err = FUNC1(EINVAL);
			} else {
				err = FUNC1(EINVAL);
			}
		} else if (err == 0) {
			if (FUNC18(propval) == DATA_TYPE_STRING) {
				if (FUNC21(prop) != PROP_TYPE_STRING)
					err = FUNC1(EINVAL);
			} else if (FUNC18(propval) == DATA_TYPE_UINT64) {
				const char *unused;

				intval = FUNC11(propval);

				switch (FUNC21(prop)) {
				case PROP_TYPE_NUMBER:
					break;
				case PROP_TYPE_STRING:
					err = FUNC1(EINVAL);
					break;
				case PROP_TYPE_INDEX:
					if (FUNC22(prop,
					    intval, &unused) != 0)
						err = FUNC1(EINVAL);
					break;
				default:
					FUNC2(CE_PANIC,
					    "unknown property type");
				}
			} else {
				err = FUNC1(EINVAL);
			}
		}

		/* Validate permissions */
		if (err == 0)
			err = FUNC19(dsname, pair, FUNC0());

		if (err == 0) {
			err = FUNC23(dsname, source, pair);
			if (err == -1) {
				/*
				 * For better performance we build up a list of
				 * properties to set in a single transaction.
				 */
				err = FUNC12(genericnvl, pair);
			} else if (err != 0 && nvl != retrynvl) {
				/*
				 * This may be a spurious error caused by
				 * receiving quota and reservation out of order.
				 * Try again in a second pass.
				 */
				err = FUNC12(retrynvl, pair);
			}
		}

		if (err != 0) {
			if (errlist != NULL)
				FUNC6(errlist, propname, err);
			rv = err;
		}
	}

	if (nvl != retrynvl && !FUNC13(retrynvl)) {
		nvl = retrynvl;
		goto retry;
	}

	if (!FUNC13(genericnvl) &&
	    FUNC5(dsname, source, genericnvl) != 0) {
		/*
		 * If this fails, we still want to set as many properties as we
		 * can, so try setting them individually.
		 */
		pair = NULL;
		while ((pair = FUNC16(genericnvl, pair)) != NULL) {
			const char *propname = FUNC17(pair);
			int err = 0;

			propval = pair;
			if (FUNC18(pair) == DATA_TYPE_NVLIST) {
				nvlist_t *attrs;
				attrs = FUNC9(pair);
				propval = FUNC8(attrs,
				    ZPROP_VALUE);
			}

			if (FUNC18(propval) == DATA_TYPE_STRING) {
				strval = FUNC10(propval);
				err = FUNC4(dsname, propname,
				    source, strval);
			} else {
				intval = FUNC11(propval);
				err = FUNC3(dsname, propname, source,
				    intval);
			}

			if (err != 0) {
				if (errlist != NULL) {
					FUNC6(errlist, propname,
					    err);
				}
				rv = err;
			}
		}
	}
	FUNC14(genericnvl);
	FUNC14(retrynvl);

	return (rv);
}