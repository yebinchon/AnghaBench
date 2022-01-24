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
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_3__ {int /*<<< orphan*/  ds_prev; int /*<<< orphan*/  ds_dir; } ;
typedef  TYPE_1__ dsl_dataset_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FTAG ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

void
FUNC7(const char *fsname)
{
	int error;
	objset_t *os;
	dsl_dataset_t *ds;

	error = FUNC2(fsname, FTAG, &os);
	if (error != 0)
		return;
	ds = FUNC1(os);
	if (FUNC5(ds->ds_dir) && FUNC0(ds->ds_prev)) {
		char originname[ZFS_MAX_DATASET_NAME_LEN];
		FUNC4(ds->ds_prev, originname);
		FUNC3(os, FTAG);
		FUNC6(originname);
	} else {
		FUNC3(os, FTAG);
	}
}