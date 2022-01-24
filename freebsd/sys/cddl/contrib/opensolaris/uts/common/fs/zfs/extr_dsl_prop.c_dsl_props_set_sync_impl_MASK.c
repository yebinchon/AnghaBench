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
typedef  char const uint64_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  intval ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 scalar_t__ DATA_TYPE_BOOLEAN ; 
 scalar_t__ DATA_TYPE_NVLIST ; 
 scalar_t__ DATA_TYPE_STRING ; 
 scalar_t__ DATA_TYPE_UINT64 ; 
 int /*<<< orphan*/  ZPROP_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int,int,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 char FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (char const*) ; 

void
FUNC10(dsl_dataset_t *ds, zprop_source_t source,
    nvlist_t *props, dmu_tx_t *tx)
{
	nvpair_t *elem = NULL;

	while ((elem = FUNC5(props, elem)) != NULL) {
		nvpair_t *pair = elem;
		const char *name = FUNC6(pair);

		if (FUNC7(pair) == DATA_TYPE_NVLIST) {
			/*
			 * This usually happens when we reuse the nvlist_t data
			 * returned by the counterpart dsl_prop_get_all_impl().
			 * For instance we do this to restore the original
			 * received properties when an error occurs in the
			 * zfs_ioc_recv() codepath.
			 */
			nvlist_t *attrs = FUNC2(pair);
			pair = FUNC1(attrs, ZPROP_VALUE);
		}

		if (FUNC7(pair) == DATA_TYPE_STRING) {
			const char *value = FUNC3(pair);
			FUNC0(ds, name,
			    source, 1, FUNC9(value) + 1, value, tx);
		} else if (FUNC7(pair) == DATA_TYPE_UINT64) {
			uint64_t intval = FUNC4(pair);
			FUNC0(ds, name,
			    source, sizeof (intval), 1, &intval, tx);
		} else if (FUNC7(pair) == DATA_TYPE_BOOLEAN) {
			FUNC0(ds, name,
			    source, 0, 0, NULL, tx);
		} else {
			FUNC8("invalid nvpair type");
		}
	}
}