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
struct statfs {int dummy; } ;
struct cpa {int c; char** a; } ;
typedef  int /*<<< orphan*/  execname ;

/* Variables and functions */
 int MNT_FORCE ; 
 int MNT_RDONLY ; 
 int MNT_UPDATE ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct cpa*,char*) ; 
 char* FUNC1 (char*,char const*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 scalar_t__ debug ; 
 int FUNC3 (char const*,char*,char**) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ fstab_style ; 
 int /*<<< orphan*/  FUNC5 (char*,struct cpa*) ; 
 int FUNC6 (char const*,int,char**) ; 
 char* mountprog ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct statfs*) ; 
 int /*<<< orphan*/  FUNC9 (struct statfs*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,char const*) ; 
 scalar_t__ FUNC11 (char const*,struct statfs*) ; 
 scalar_t__ FUNC12 (char const*,char*) ; 
 char* FUNC13 (char const*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int) ; 
 scalar_t__ FUNC15 (char const*) ; 
 scalar_t__ verbose ; 
 int /*<<< orphan*/  FUNC16 (char*,char const*) ; 

int
FUNC17(const char *vfstype, const char *spec, const char *name, int flags,
	const char *options, const char *mntopts)
{
	struct statfs sf;
	int i, ret;
	char *optbuf, execname[PATH_MAX], mntpath[PATH_MAX];
	static struct cpa mnt_argv;

	/* resolve the mountpoint with realpath(3) */
	if (FUNC2(name, mntpath) != 0) {
		FUNC16("%s", mntpath);
		return (1);
	}
	name = mntpath;

	if (mntopts == NULL)
		mntopts = "";
	optbuf = FUNC1(FUNC13(mntopts), options);

	if (FUNC12(name, "/") == 0)
		flags |= MNT_UPDATE;
	if (flags & MNT_FORCE)
		optbuf = FUNC1(optbuf, "force");
	if (flags & MNT_RDONLY)
		optbuf = FUNC1(optbuf, "ro");
	/*
	 * XXX
	 * The mount_mfs (newfs) command uses -o to select the
	 * optimization mode.  We don't pass the default "-o rw"
	 * for that reason.
	 */
	if (flags & MNT_UPDATE)
		optbuf = FUNC1(optbuf, "update");

	/* Compatibility glue. */
	if (FUNC12(vfstype, "msdos") == 0)
		vfstype = "msdosfs";

	/* Construct the name of the appropriate mount command */
	(void)FUNC10(execname, sizeof(execname), "mount_%s", vfstype);

	mnt_argv.c = -1;
	FUNC0(&mnt_argv, execname);
	FUNC5(optbuf, &mnt_argv);
	if (mountprog != NULL)
		FUNC14(execname, mountprog, sizeof(execname));

	FUNC0(&mnt_argv, FUNC13(spec));
	FUNC0(&mnt_argv, FUNC13(name));
	FUNC0(&mnt_argv, NULL);

	if (debug) {
		if (FUNC15(vfstype))
			FUNC7("exec: %s", execname);
		else
			FUNC7("mount -t %s", vfstype);
		for (i = 1; i < mnt_argv.c; i++)
			(void)FUNC7(" %s", mnt_argv.a[i]);
		(void)FUNC7("\n");
		FUNC4(optbuf);
		FUNC4(mountprog);
		mountprog = NULL;
		return (0);
	}

	if (FUNC15(vfstype)) {
		ret = FUNC3(name, execname, mnt_argv.a);
	} else {
		ret = FUNC6(vfstype, mnt_argv.c, mnt_argv.a);
	}

	FUNC4(optbuf);
	FUNC4(mountprog);
	mountprog = NULL;

	if (verbose) {
		if (FUNC11(name, &sf) < 0) {
			FUNC16("statfs %s", name);
			return (1);
		}
		if (fstab_style)
			FUNC9(&sf);
		else
			FUNC8(&sf);
	}

	return (ret);
}