#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  z_vfs; int /*<<< orphan*/  z_os; } ;
typedef  TYPE_1__ zfsvfs_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,char*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char const*,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char**) ; 
 char* FUNC6 (char*,char) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC11(const char *fsname, nvlist_t *innvl, nvlist_t *outnvl)
{
	zfsvfs_t *zfsvfs;
	char *target = NULL;
	int error;

	(void) FUNC5(innvl, "target", &target);
	if (target != NULL) {
		const char *cp = FUNC6(target, '@');

		/*
		 * The snap name must contain an @, and the part after it must
		 * contain only valid characters.
		 */
		if (cp == NULL ||
		    FUNC8(cp + 1, NULL, NULL) != 0)
			return (FUNC0(EINVAL));
	}

	if (FUNC4(fsname, &zfsvfs) == 0) {
		dsl_dataset_t *ds;

		ds = FUNC2(zfsvfs->z_os);
		error = FUNC10(zfsvfs);
		if (error == 0) {
			int resume_err;

			error = FUNC3(fsname, target, zfsvfs,
			    outnvl);
			resume_err = FUNC9(zfsvfs, ds);
			error = error ? error : resume_err;
		}
#ifdef illumos
		VFS_RELE(zfsvfs->z_vfs);
#else
		FUNC7(zfsvfs->z_vfs);
#endif
	} else {
		error = FUNC3(fsname, target, NULL, outnvl);
	}
	return (error);
}