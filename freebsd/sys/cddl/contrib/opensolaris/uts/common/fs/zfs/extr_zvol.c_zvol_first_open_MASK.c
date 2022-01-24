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
struct TYPE_6__ {int /*<<< orphan*/  zv_flags; int /*<<< orphan*/  zv_name; int /*<<< orphan*/  zv_zilog; int /*<<< orphan*/  zv_dn; int /*<<< orphan*/  zv_volblocksize; int /*<<< orphan*/ * zv_objset; } ;
typedef  TYPE_1__ zvol_state_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_7__ {int /*<<< orphan*/  doi_data_block_size; } ;
typedef  TYPE_2__ dmu_object_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  DMU_OST_ZVOL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  ZVOL_OBJ ; 
 int /*<<< orphan*/  ZVOL_RDONLY ; 
 int /*<<< orphan*/  ZVOL_ZAP_OBJ ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zvol_get_data ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  zvol_tag ; 

int
FUNC13(zvol_state_t *zv)
{
	dmu_object_info_t doi;
	objset_t *os;
	uint64_t volsize;
	int error;
	uint64_t readonly;

	/* lie and say we're read-only */
	error = FUNC5(zv->zv_name, DMU_OST_ZVOL, B_TRUE,
	    zvol_tag, &os);
	if (error)
		return (error);

	zv->zv_objset = os;
	error = FUNC10(os, ZVOL_ZAP_OBJ, "size", 8, 1, &volsize);
	if (error) {
		FUNC0(error == 0);
		FUNC3(os, zvol_tag);
		return (error);
	}

	/* get and cache the blocksize */
	error = FUNC2(os, ZVOL_OBJ, &doi);
	if (error) {
		FUNC0(error == 0);
		FUNC3(os, zvol_tag);
		return (error);
	}
	zv->zv_volblocksize = doi.doi_data_block_size;

	error = FUNC7(os, ZVOL_OBJ, zvol_tag, &zv->zv_dn);
	if (error) {
		FUNC3(os, zvol_tag);
		return (error);
	}

	FUNC12(zv, volsize);
	zv->zv_zilog = FUNC11(os, zvol_get_data);

	FUNC1(FUNC8(zv->zv_name, "readonly", &readonly,
	    NULL) == 0);
	if (readonly || FUNC4(os) ||
	    !FUNC9(FUNC6(os)))
		zv->zv_flags |= ZVOL_RDONLY;
	else
		zv->zv_flags &= ~ZVOL_RDONLY;
	return (error);
}