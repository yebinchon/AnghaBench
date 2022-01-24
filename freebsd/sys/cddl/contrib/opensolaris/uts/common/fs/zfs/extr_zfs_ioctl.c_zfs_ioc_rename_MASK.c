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
struct TYPE_3__ {int zc_cookie; char* zc_name; char* zc_value; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  scalar_t__ dmu_objset_type_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int B_TRUE ; 
 scalar_t__ DMU_OST_ZFS ; 
 scalar_t__ DMU_OST_ZVOL ; 
 int /*<<< orphan*/  DS_FIND_CHILDREN ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOTSUP ; 
 int /*<<< orphan*/  EXDEV ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (char*,char*,char*) ; 
 int FUNC7 (char*,char*,char*,int) ; 
 int FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  recursive_unmount ; 
 char* FUNC9 (char*,char) ; 
 scalar_t__ FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static int
FUNC12(zfs_cmd_t *zc)
{
	objset_t *os;
	dmu_objset_type_t ost;
	boolean_t recursive = zc->zc_cookie & 1;
	char *pos, *pos2;
	boolean_t allow_mounted = B_TRUE;
	int err;

#ifdef __FreeBSD__
	allow_mounted = (zc->zc_cookie & 2) != 0;
#endif

	zc->zc_name[sizeof (zc->zc_name) - 1] = '\0';
	zc->zc_value[sizeof (zc->zc_value) - 1] = '\0';

	pos = FUNC9(zc->zc_name, '#');
	if (pos != NULL) {
		/* Bookmarks must be in same fs. */
		pos2 = FUNC9(zc->zc_value, '#');
		if (pos2 == NULL)
			return (FUNC0(EINVAL));

		/* Recursive flag is not supported yet. */
		if (recursive)
			return (FUNC0(ENOTSUP));

		*pos = '\0';
		*pos2 = '\0';
		if (FUNC10(zc->zc_name, zc->zc_value) == 0) {
			err = FUNC6(zc->zc_name,
			    pos + 1, pos2 + 1);
		} else {
			err = FUNC0(EXDEV);
		}
		*pos = '#';
		*pos2 = '#';
		return (err);
	}

	/* "zfs rename" from and to ...%recv datasets should both fail */
	if (FUNC1(zc->zc_name, NULL, NULL) != 0 ||
	    FUNC1(zc->zc_value, NULL, NULL) != 0 ||
	    FUNC9(zc->zc_name, '%') || FUNC9(zc->zc_value, '%'))
		return (FUNC0(EINVAL));

	err = FUNC3(zc->zc_name, FTAG, &os);
	if (err != 0)
		return (err);
	ost = FUNC5(os);
	FUNC4(os, FTAG);

	pos = FUNC9(zc->zc_name, '@');
	if (pos != NULL) {
		/* Snapshots must be in same fs. */
		pos2 = FUNC9(zc->zc_value, '@');
		if (pos2 == NULL)
			return (FUNC0(EINVAL));
		*pos = '\0';
		*pos2 = '\0';
		if (FUNC10(zc->zc_name, zc->zc_value) != 0) {
			err = FUNC0(EXDEV);
		} else {
			if (ost == DMU_OST_ZFS && !allow_mounted) {
				err = FUNC2(zc->zc_name,
				    recursive_unmount, pos + 1,
				    recursive ? DS_FIND_CHILDREN : 0);
			}
			if (err == 0) {
				err = FUNC7(zc->zc_name,
				    pos + 1, pos2 + 1, recursive);
			}
		}
		*pos = '@';
		*pos2 = '@';
		return (err);
	} else {
#ifdef illumos
		if (ost == DMU_OST_ZVOL)
			(void) zvol_remove_minor(zc->zc_name);
#endif
		return (FUNC8(zc->zc_name, zc->zc_value));
	}
}