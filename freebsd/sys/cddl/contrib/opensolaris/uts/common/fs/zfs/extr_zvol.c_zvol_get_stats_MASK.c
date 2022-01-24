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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_3__ {int /*<<< orphan*/  doi_data_block_size; } ;
typedef  TYPE_1__ dmu_object_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZFS_PROP_VOLBLOCKSIZE ; 
 int /*<<< orphan*/  ZFS_PROP_VOLSIZE ; 
 int /*<<< orphan*/  ZVOL_OBJ ; 
 int /*<<< orphan*/  ZVOL_ZAP_OBJ ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ *) ; 

int
FUNC3(objset_t *os, nvlist_t *nv)
{
	int error;
	dmu_object_info_t doi;
	uint64_t val;

	error = FUNC2(os, ZVOL_ZAP_OBJ, "size", 8, 1, &val);
	if (error)
		return (error);

	FUNC1(nv, ZFS_PROP_VOLSIZE, val);

	error = FUNC0(os, ZVOL_OBJ, &doi);

	if (error == 0) {
		FUNC1(nv, ZFS_PROP_VOLBLOCKSIZE,
		    doi.doi_data_block_size);
	}

	return (error);
}