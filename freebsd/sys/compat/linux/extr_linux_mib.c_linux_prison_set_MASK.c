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
struct vfsoptlist {int dummy; } ;
struct prison {int /*<<< orphan*/  pr_mtx; } ;
struct linux_prison {int pr_oss_version; int /*<<< orphan*/  pr_osname; int /*<<< orphan*/  pr_osrelease; int /*<<< orphan*/  pr_osrel; } ;
typedef  int /*<<< orphan*/  oss_version ;
typedef  int /*<<< orphan*/  jsys ;

/* Variables and functions */
 int ENOENT ; 
#define  JAIL_SYS_INHERIT 129 
#define  JAIL_SYS_NEW 128 
 int /*<<< orphan*/  LINUX_MAX_UTSNAME ; 
 int /*<<< orphan*/  FUNC0 (struct prison*,struct linux_prison**) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  linux_osd_jail_slot ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct prison*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct vfsoptlist*,char*,int*,int) ; 
 int FUNC7 (struct vfsoptlist*,char*,void**,int*) ; 

__attribute__((used)) static int
FUNC8(void *obj, void *data)
{
	struct linux_prison *lpr;
	struct prison *pr = obj;
	struct vfsoptlist *opts = data;
	char *osname, *osrelease;
	int error, gotversion, jsys, len, oss_version;

	/* Set the parameters, which should be correct. */
	error = FUNC6(opts, "linux", &jsys, sizeof(jsys));
	if (error == ENOENT)
		jsys = -1;
	error = FUNC7(opts, "linux.osname", (void **)&osname, &len);
	if (error == ENOENT)
		osname = NULL;
	else
		jsys = JAIL_SYS_NEW;
	error = FUNC7(opts, "linux.osrelease", (void **)&osrelease, &len);
	if (error == ENOENT)
		osrelease = NULL;
	else
		jsys = JAIL_SYS_NEW;
	error = FUNC6(opts, "linux.oss_version", &oss_version,
	    sizeof(oss_version));
	if (error == ENOENT)
		gotversion = 0;
	else {
		gotversion = 1;
		jsys = JAIL_SYS_NEW;
	}
	switch (jsys) {
	case JAIL_SYS_INHERIT:
		/* "linux=inherit": inherit the parent's Linux info. */
		FUNC2(&pr->pr_mtx);
		FUNC4(pr, linux_osd_jail_slot);
		FUNC3(&pr->pr_mtx);
		break;
	case JAIL_SYS_NEW:
		/*
		 * "linux=new" or "linux.*":
		 * the prison gets its own Linux info.
		 */
		FUNC0(pr, &lpr);
		if (osrelease) {
			(void)FUNC1(osrelease, &lpr->pr_osrel);
			FUNC5(lpr->pr_osrelease, osrelease,
			    LINUX_MAX_UTSNAME);
		}
		if (osname)
			FUNC5(lpr->pr_osname, osname, LINUX_MAX_UTSNAME);
		if (gotversion)
			lpr->pr_oss_version = oss_version;
		FUNC3(&pr->pr_mtx);
	}

	return (0);
}