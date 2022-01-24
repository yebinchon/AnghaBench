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
struct TYPE_6__ {int /*<<< orphan*/ * zv_objset; } ;
typedef  TYPE_1__ zvol_state_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_7__ {int /*<<< orphan*/  doi_data_block_size; } ;
typedef  TYPE_2__ dmu_object_info_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int /*<<< orphan*/  DMU_OST_ZVOL ; 
 int /*<<< orphan*/  EROFS ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZFS_PROP_READONLY ; 
 int /*<<< orphan*/  ZVOL_OBJ ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zfsdev_state_lock ; 
 int FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (char const*) ; 
 int FUNC10 (TYPE_1__*,scalar_t__) ; 
 int FUNC11 (int /*<<< orphan*/ *,scalar_t__) ; 

int
FUNC12(const char *name, uint64_t volsize)
{
	zvol_state_t *zv = NULL;
	objset_t *os;
	int error;
	dmu_object_info_t doi;
	uint64_t readonly;
	boolean_t owned = B_FALSE;

	error = FUNC4(name,
	    FUNC7(ZFS_PROP_READONLY), &readonly, NULL);
	if (error != 0)
		return (error);
	if (readonly)
		return (FUNC0(EROFS));

	FUNC5(&zfsdev_state_lock);
	zv = FUNC9(name);

	if (zv == NULL || zv->zv_objset == NULL) {
		if ((error = FUNC3(name, DMU_OST_ZVOL, B_FALSE,
		    FTAG, &os)) != 0) {
			FUNC6(&zfsdev_state_lock);
			return (error);
		}
		owned = B_TRUE;
		if (zv != NULL)
			zv->zv_objset = os;
	} else {
		os = zv->zv_objset;
	}

	if ((error = FUNC1(os, ZVOL_OBJ, &doi)) != 0 ||
	    (error = FUNC8(volsize, doi.doi_data_block_size)) != 0)
		goto out;

	error = FUNC11(os, volsize);

	if (error == 0 && zv != NULL)
		error = FUNC10(zv, volsize);
out:
	if (owned) {
		FUNC2(os, FTAG);
		if (zv != NULL)
			zv->zv_objset = NULL;
	}
	FUNC6(&zfsdev_state_lock);
	return (error);
}