#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct stat {int st_mode; } ;
struct sftp_conn {int dummy; } ;
struct dirent {scalar_t__ d_ino; char* d_name; } ;
struct TYPE_7__ {int perm; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  DIR ;
typedef  TYPE_1__ Attrib ;

/* Variables and functions */
 int MAX_DIR_DEPTH ; 
 int /*<<< orphan*/  SSH2_FILEXFER_ATTR_ACMODTIME ; 
 int /*<<< orphan*/  SSH2_FILEXFER_ATTR_SIZE ; 
 int /*<<< orphan*/  SSH2_FILEXFER_ATTR_UIDGID ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct sftp_conn*,char const*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sftp_conn*,char const*,TYPE_1__*) ; 
 TYPE_1__* FUNC6 (struct sftp_conn*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct sftp_conn*,char*,char*,int,int,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  interrupted ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,...) ; 
 int FUNC11 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*) ; 
 int /*<<< orphan*/ * FUNC13 (char const*) ; 
 char* FUNC14 (char const*,char*) ; 
 struct dirent* FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC17 (struct stat*,TYPE_1__*) ; 
 scalar_t__ FUNC18 (char*,char*) ; 
 char* FUNC19 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC20(struct sftp_conn *conn, const char *src, const char *dst,
    int depth, int preserve_flag, int print_flag, int resume, int fsync_flag)
{
	int ret = 0;
	DIR *dirp;
	struct dirent *dp;
	char *filename, *new_src = NULL, *new_dst = NULL;
	struct stat sb;
	Attrib a, *dirattrib;

	if (depth >= MAX_DIR_DEPTH) {
		FUNC8("Maximum directory depth exceeded: %d levels", depth);
		return -1;
	}

	if (FUNC16(src, &sb) == -1) {
		FUNC8("Couldn't stat directory \"%s\": %s",
		    src, FUNC19(errno));
		return -1;
	}
	if (!FUNC0(sb.st_mode)) {
		FUNC8("\"%s\" is not a directory", src);
		return -1;
	}
	if (print_flag)
		FUNC12("Entering %s\n", src);

	FUNC2(&a);
	FUNC17(&sb, &a);
	a.flags &= ~SSH2_FILEXFER_ATTR_SIZE;
	a.flags &= ~SSH2_FILEXFER_ATTR_UIDGID;
	a.perm &= 01777;
	if (!preserve_flag)
		a.flags &= ~SSH2_FILEXFER_ATTR_ACMODTIME;

	/*
	 * sftp lacks a portable status value to match errno EEXIST,
	 * so if we get a failure back then we must check whether
	 * the path already existed and is a directory.
	 */
	if (FUNC4(conn, dst, &a, 0) != 0) {
		if ((dirattrib = FUNC6(conn, dst, 0)) == NULL)
			return -1;
		if (!FUNC0(dirattrib->perm)) {
			FUNC8("\"%s\" exists but is not a directory", dst);
			return -1;
		}
	}

	if ((dirp = FUNC13(src)) == NULL) {
		FUNC8("Failed to open dir \"%s\": %s", src, FUNC19(errno));
		return -1;
	}

	while (((dp = FUNC15(dirp)) != NULL) && !interrupted) {
		if (dp->d_ino == 0)
			continue;
		FUNC9(new_dst);
		FUNC9(new_src);
		filename = dp->d_name;
		new_dst = FUNC14(dst, filename);
		new_src = FUNC14(src, filename);

		if (FUNC11(new_src, &sb) == -1) {
			FUNC10("%s: lstat failed: %s", filename,
			    FUNC19(errno));
			ret = -1;
		} else if (FUNC0(sb.st_mode)) {
			if (FUNC18(filename, ".") == 0 ||
			    FUNC18(filename, "..") == 0)
				continue;

			if (FUNC20(conn, new_src, new_dst,
			    depth + 1, preserve_flag, print_flag, resume,
			    fsync_flag) == -1)
				ret = -1;
		} else if (FUNC1(sb.st_mode)) {
			if (FUNC7(conn, new_src, new_dst,
			    preserve_flag, resume, fsync_flag) == -1) {
				FUNC8("Uploading of file %s to %s failed!",
				    new_src, new_dst);
				ret = -1;
			}
		} else
			FUNC10("%s: not a regular file\n", filename);
	}
	FUNC9(new_dst);
	FUNC9(new_src);

	FUNC5(conn, dst, &a);

	(void) FUNC3(dirp);
	return ret;
}