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
struct linux_prison {char* pr_osname; char* pr_osrelease; int pr_oss_version; } ;
typedef  int /*<<< orphan*/  i ;

/* Variables and functions */
 int ENOENT ; 
 int JAIL_SYS_INHERIT ; 
 int JAIL_SYS_NEW ; 
 struct linux_prison* FUNC0 (struct prison*,struct prison**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct vfsoptlist*,char*,int*,int) ; 
 int FUNC3 (struct vfsoptlist*,char*,char*) ; 

__attribute__((used)) static int
FUNC4(void *obj, void *data)
{
	struct linux_prison *lpr;
	struct prison *ppr;
	struct prison *pr = obj;
	struct vfsoptlist *opts = data;
	int error, i;

	static int version0;

	/* See if this prison is the one with the Linux info. */
	lpr = FUNC0(pr, &ppr);
	i = (ppr == pr) ? JAIL_SYS_NEW : JAIL_SYS_INHERIT;
	error = FUNC2(opts, "linux", &i, sizeof(i));
	if (error != 0 && error != ENOENT)
		goto done;
	if (i) {
		error = FUNC3(opts, "linux.osname", lpr->pr_osname);
		if (error != 0 && error != ENOENT)
			goto done;
		error = FUNC3(opts, "linux.osrelease", lpr->pr_osrelease);
		if (error != 0 && error != ENOENT)
			goto done;
		error = FUNC2(opts, "linux.oss_version",
		    &lpr->pr_oss_version, sizeof(lpr->pr_oss_version));
		if (error != 0 && error != ENOENT)
			goto done;
	} else {
		/*
		 * If this prison is inheriting its Linux info, report
		 * empty/zero parameters.
		 */
		error = FUNC3(opts, "linux.osname", "");
		if (error != 0 && error != ENOENT)
			goto done;
		error = FUNC3(opts, "linux.osrelease", "");
		if (error != 0 && error != ENOENT)
			goto done;
		error = FUNC2(opts, "linux.oss_version", &version0,
		    sizeof(lpr->pr_oss_version));
		if (error != 0 && error != ENOENT)
			goto done;
	}
	error = 0;

 done:
	FUNC1(&ppr->pr_mtx);

	return (error);
}