#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct timeval {scalar_t__ tv_usec; int /*<<< orphan*/  tv_sec; } ;
struct sftp_conn {int dummy; } ;
typedef  int mode_t ;
struct TYPE_9__ {int perm; int flags; int /*<<< orphan*/  mtime; int /*<<< orphan*/  atime; } ;
struct TYPE_8__ {char* filename; TYPE_2__ a; } ;
typedef  TYPE_1__ SFTP_DIRENT ;
typedef  TYPE_2__ Attrib ;

/* Variables and functions */
 scalar_t__ EEXIST ; 
 int MAX_DIR_DEPTH ; 
 int SSH2_FILEXFER_ATTR_ACMODTIME ; 
 int SSH2_FILEXFER_ATTR_PERMISSIONS ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int FUNC3 (struct sftp_conn*,char*,char*,TYPE_2__*,int,int,int) ; 
 int FUNC4 (struct sftp_conn*,char const*,TYPE_1__***) ; 
 TYPE_2__* FUNC5 (struct sftp_conn*,char const*,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__**) ; 
 int /*<<< orphan*/  interrupted ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int FUNC10 (char const*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*) ; 
 char* FUNC12 (char const*,char*) ; 
 scalar_t__ FUNC13 (char*,char*) ; 
 char* FUNC14 (scalar_t__) ; 
 int FUNC15 (char const*,struct timeval*) ; 

__attribute__((used)) static int
FUNC16(struct sftp_conn *conn, const char *src, const char *dst,
    int depth, Attrib *dirattrib, int preserve_flag, int print_flag,
    int resume_flag, int fsync_flag)
{
	int i, ret = 0;
	SFTP_DIRENT **dir_entries;
	char *filename, *new_src = NULL, *new_dst = NULL;
	mode_t mode = 0777;

	if (depth >= MAX_DIR_DEPTH) {
		FUNC6("Maximum directory depth exceeded: %d levels", depth);
		return -1;
	}

	if (dirattrib == NULL &&
	    (dirattrib = FUNC5(conn, src, 1)) == NULL) {
		FUNC6("Unable to stat remote directory \"%s\"", src);
		return -1;
	}
	if (!FUNC0(dirattrib->perm)) {
		FUNC6("\"%s\" is not a directory", src);
		return -1;
	}
	if (print_flag)
		FUNC11("Retrieving %s\n", src);

	if (dirattrib->flags & SSH2_FILEXFER_ATTR_PERMISSIONS)
		mode = dirattrib->perm & 01777;
	else {
		FUNC2("Server did not send permissions for "
		    "directory \"%s\"", dst);
	}

	if (FUNC10(dst, mode) == -1 && errno != EEXIST) {
		FUNC6("mkdir %s: %s", dst, FUNC14(errno));
		return -1;
	}

	if (FUNC4(conn, src, &dir_entries) == -1) {
		FUNC6("%s: Failed to get directory contents", src);
		return -1;
	}

	for (i = 0; dir_entries[i] != NULL && !interrupted; i++) {
		FUNC7(new_dst);
		FUNC7(new_src);

		filename = dir_entries[i]->filename;
		new_dst = FUNC12(dst, filename);
		new_src = FUNC12(src, filename);

		if (FUNC0(dir_entries[i]->a.perm)) {
			if (FUNC13(filename, ".") == 0 ||
			    FUNC13(filename, "..") == 0)
				continue;
			if (FUNC16(conn, new_src, new_dst,
			    depth + 1, &(dir_entries[i]->a), preserve_flag,
			    print_flag, resume_flag, fsync_flag) == -1)
				ret = -1;
		} else if (FUNC1(dir_entries[i]->a.perm) ) {
			if (FUNC3(conn, new_src, new_dst,
			    &(dir_entries[i]->a), preserve_flag,
			    resume_flag, fsync_flag) == -1) {
				FUNC6("Download of file %s to %s failed",
				    new_src, new_dst);
				ret = -1;
			}
		} else
			FUNC9("%s: not a regular file\n", new_src);

	}
	FUNC7(new_dst);
	FUNC7(new_src);

	if (preserve_flag) {
		if (dirattrib->flags & SSH2_FILEXFER_ATTR_ACMODTIME) {
			struct timeval tv[2];
			tv[0].tv_sec = dirattrib->atime;
			tv[1].tv_sec = dirattrib->mtime;
			tv[0].tv_usec = tv[1].tv_usec = 0;
			if (FUNC15(dst, tv) == -1)
				FUNC6("Can't set times on \"%s\": %s",
				    dst, FUNC14(errno));
		} else
			FUNC2("Server did not send times for directory "
			    "\"%s\"", dst);
	}

	FUNC8(dir_entries);

	return ret;
}