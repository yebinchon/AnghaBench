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
typedef  scalar_t__ zprop_type_t ;
typedef  int /*<<< orphan*/  zfs_prop_t ;
typedef  char uint64_t ;
typedef  int /*<<< orphan*/  numval ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;

/* Variables and functions */
 int /*<<< orphan*/  KM_SLEEP ; 
 scalar_t__ PROP_TYPE_INDEX ; 
 scalar_t__ PROP_TYPE_STRING ; 
 int ZAP_MAXVALUELEN ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int FUNC0 (int /*<<< orphan*/ *,char const*,int,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,char,char const**) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(lua_State *state, dsl_dataset_t *ds, zfs_prop_t zfs_prop)
{
	int error = 0;
	char setpoint[ZFS_MAX_DATASET_NAME_LEN];
	char *strval = FUNC3(ZAP_MAXVALUELEN, KM_SLEEP);
	uint64_t numval;
	const char *prop_name = FUNC9(zfs_prop);
	zprop_type_t prop_type = FUNC7(zfs_prop);

	if (prop_type == PROP_TYPE_STRING) {
		/* Push value to lua stack */
		error = FUNC0(ds, prop_name, 1,
		    ZAP_MAXVALUELEN, strval, setpoint);
		if (error == 0)
			(void) FUNC6(state, strval);
	} else {
		error = FUNC0(ds, prop_name, sizeof (numval),
		    1, &numval, setpoint);

		/* Fill in temorary value for prop, if applicable */
		(void) FUNC2(ds, zfs_prop, &numval, setpoint);

		/* Push value to lua stack */
		if (prop_type == PROP_TYPE_INDEX) {
			const char *propval;
			error = FUNC8(zfs_prop, numval,
			    &propval);
			if (error == 0)
				(void) FUNC6(state, propval);
		} else {
			if (error == 0)
				(void) FUNC5(state, numval);
		}
	}
	FUNC4(strval, ZAP_MAXVALUELEN);
	if (error == 0)
		FUNC1(state, setpoint, zfs_prop);
	return (error);
}