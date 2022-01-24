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
typedef  int /*<<< orphan*/  usrname ;
struct statfs {char* f_mntonname; } ;
struct fstab {char* fs_file; int /*<<< orphan*/  fs_mntops; } ;
typedef  int /*<<< orphan*/  grpname ;

/* Variables and functions */
 int BUFSIZ ; 
 size_t GRPQUOTA ; 
 char* QUOTAFILENAME ; 
 size_t USRQUOTA ; 
 char** qfextension ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char*,char*,...) ; 
 scalar_t__ FUNC1 (char*,struct statfs*) ; 
 char* FUNC2 (char*,char) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 char* FUNC6 (char*,char*) ; 

__attribute__((used)) static int
FUNC7(struct fstab *fs, int type, char *qfnamep, int qfbufsize)
{
	char *opt;
	char *cp;
	struct statfs sfb;
	char buf[BUFSIZ];
	static char initname, usrname[100], grpname[100];

	/*
	 * 1) we only need one of these
	 * 2) fstab may specify a different filename
	 */
	if (!initname) {
		(void)FUNC0(usrname, sizeof(usrname), "%s%s",
		    qfextension[USRQUOTA], QUOTAFILENAME);
		(void)FUNC0(grpname, sizeof(grpname), "%s%s",
		    qfextension[GRPQUOTA], QUOTAFILENAME);
		initname = 1;
	}
	FUNC4(buf, fs->fs_mntops);
	for (opt = FUNC6(buf, ","); opt; opt = FUNC6(NULL, ",")) {
		if ((cp = FUNC2(opt, '=')))
			*cp++ = '\0';
		if (type == USRQUOTA && FUNC3(opt, usrname) == 0)
			break;
		if (type == GRPQUOTA && FUNC3(opt, grpname) == 0)
			break;
	}
	if (!opt)
		return (0);
	/*
	 * Ensure that the filesystem is mounted.
	 */
	if (FUNC1(fs->fs_file, &sfb) != 0 ||
	    FUNC3(fs->fs_file, sfb.f_mntonname)) {
		return (0);
	}
	if (cp) {
		FUNC5(qfnamep, cp, qfbufsize);
	} else {
		(void)FUNC0(qfnamep, qfbufsize, "%s/%s.%s", fs->fs_file,
		    QUOTAFILENAME, qfextension[type]);
	}
	return (1);
}