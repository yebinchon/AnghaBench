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
typedef  scalar_t__ zfs_prop_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  ZFS_PROP_REFQUOTA 128 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__ const) ; 

__attribute__((used)) static nvlist_t *
FUNC11(nvlist_t *props)
{
	nvlist_t *delayprops;
	nvpair_t *nvp, *tmp;
	static const zfs_prop_t delayable[] = { ZFS_PROP_REFQUOTA, 0 };
	int i;

	FUNC0(FUNC2(&delayprops, NV_UNIQUE_NAME, KM_SLEEP) == 0);

	for (nvp = FUNC5(props, NULL); nvp != NULL;
	    nvp = FUNC5(props, nvp)) {
		/*
		 * strcmp() is safe because zfs_prop_to_name() always returns
		 * a bounded string.
		 */
		for (i = 0; delayable[i] != 0; i++) {
			if (FUNC9(FUNC10(delayable[i]),
			    FUNC8(nvp)) == 0) {
				break;
			}
		}
		if (delayable[i] != 0) {
			tmp = FUNC6(props, nvp);
			FUNC0(FUNC1(delayprops, nvp) == 0);
			FUNC0(FUNC7(props, nvp) == 0);
			nvp = tmp;
		}
	}

	if (FUNC3(delayprops)) {
		FUNC4(delayprops);
		delayprops = NULL;
	}
	return (delayprops);
}