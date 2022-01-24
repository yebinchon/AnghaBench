#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct sftp_conn {int dummy; } ;
typedef  int /*<<< orphan*/  path_buf ;
struct TYPE_10__ {char** gl_pathv; scalar_t__ gl_pathc; } ;
typedef  TYPE_1__ glob_t ;
typedef  int /*<<< orphan*/  g ;
struct TYPE_11__ {int flags; int perm; unsigned long uid; unsigned long gid; } ;
typedef  TYPE_2__ Attrib ;

/* Variables and functions */
 int /*<<< orphan*/  GLOB_NOCHECK ; 
#define  I_CHDIR 154 
#define  I_CHGRP 153 
#define  I_CHMOD 152 
#define  I_CHOWN 151 
#define  I_DF 150 
#define  I_GET 149 
#define  I_HELP 148 
#define  I_LCHDIR 147 
#define  I_LINK 146 
#define  I_LLS 145 
#define  I_LMKDIR 144 
#define  I_LPWD 143 
#define  I_LS 142 
#define  I_LUMASK 141 
#define  I_MKDIR 140 
#define  I_PROGRESS 139 
#define  I_PUT 138 
#define  I_PWD 137 
#define  I_QUIT 136 
#define  I_REGET 135 
#define  I_RENAME 134 
#define  I_REPUT 133 
#define  I_RM 132 
#define  I_RMDIR 131 
#define  I_SHELL 130 
#define  I_SYMLINK 129 
#define  I_VERSION 128 
 int PATH_MAX ; 
 int SSH2_FILEXFER_ATTR_PERMISSIONS ; 
 int SSH2_FILEXFER_ATTR_UIDGID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (char*) ; 
 int FUNC3 (struct sftp_conn*,char*,int,int) ; 
 int FUNC4 (struct sftp_conn*,char*,char*,int) ; 
 int FUNC5 (struct sftp_conn*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct sftp_conn*,char*,char*,int) ; 
 int FUNC7 (struct sftp_conn*,char*,TYPE_2__*,int) ; 
 char* FUNC8 (struct sftp_conn*,char*) ; 
 int FUNC9 (struct sftp_conn*,char*,char*,int) ; 
 int FUNC10 (struct sftp_conn*,char*) ; 
 int FUNC11 (struct sftp_conn*,char*) ; 
 int FUNC12 (struct sftp_conn*,char*,TYPE_2__*) ; 
 TYPE_2__* FUNC13 (struct sftp_conn*,char*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct sftp_conn*,char*,char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int /*<<< orphan*/  FUNC16 (char*,int) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (char*,int) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  interrupted ; 
 int /*<<< orphan*/  FUNC22 (char const*) ; 
 int /*<<< orphan*/  FUNC23 (char const*) ; 
 char* FUNC24 (char*,char*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC26 (char*,int) ; 
 int /*<<< orphan*/  FUNC27 (char*,char*) ; 
 int FUNC28 (char const**,int*,int*,int*,int*,int*,int*,int*,int*,int*,unsigned long*,char**,char**) ; 
 int /*<<< orphan*/  FUNC29 (char*,...) ; 
 int FUNC30 (struct sftp_conn*,char*,char*,char*,int,int,int,int) ; 
 int FUNC31 (struct sftp_conn*,char*,char*,char*,int,int,int,int) ; 
 int /*<<< orphan*/  quiet ; 
 int /*<<< orphan*/  FUNC32 (struct sftp_conn*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC33 (struct sftp_conn*) ; 
 int showprogress ; 
 char* FUNC34 (int /*<<< orphan*/ ) ; 
 int FUNC35 (struct sftp_conn*,char*,char*) ; 
 char* FUNC36 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (unsigned long) ; 
 char* FUNC38 (char const*) ; 

__attribute__((used)) static int
FUNC39(struct sftp_conn *conn, const char *cmd, char **pwd,
    const char *startdir, int err_abort)
{
	char *path1, *path2, *tmp;
	int ignore_errors = 0, aflag = 0, fflag = 0, hflag = 0,
	iflag = 0;
	int lflag = 0, pflag = 0, rflag = 0, sflag = 0;
	int cmdnum, i;
	unsigned long n_arg = 0;
	Attrib a, *aa;
	char path_buf[PATH_MAX];
	int err = 0;
	glob_t g;

	path1 = path2 = NULL;
	cmdnum = FUNC28(&cmd, &ignore_errors, &aflag, &fflag, &hflag,
	    &iflag, &lflag, &pflag, &rflag, &sflag, &n_arg, &path1, &path2);
	if (ignore_errors != 0)
		err_abort = 0;

	FUNC25(&g, 0, sizeof(g));

	/* Perform command */
	switch (cmdnum) {
	case 0:
		/* Blank line */
		break;
	case -1:
		/* Unrecognized command */
		err = -1;
		break;
	case I_REGET:
		aflag = 1;
		/* FALLTHROUGH */
	case I_GET:
		err = FUNC30(conn, path1, path2, *pwd, pflag,
		    rflag, aflag, fflag);
		break;
	case I_REPUT:
		aflag = 1;
		/* FALLTHROUGH */
	case I_PUT:
		err = FUNC31(conn, path1, path2, *pwd, pflag,
		    rflag, aflag, fflag);
		break;
	case I_RENAME:
		path1 = FUNC24(path1, *pwd);
		path2 = FUNC24(path2, *pwd);
		err = FUNC9(conn, path1, path2, lflag);
		break;
	case I_SYMLINK:
		sflag = 1;
	case I_LINK:
		if (!sflag)
			path1 = FUNC24(path1, *pwd);
		path2 = FUNC24(path2, *pwd);
		err = (sflag ? do_symlink : do_hardlink)(conn, path1, path2);
		break;
	case I_RM:
		path1 = FUNC24(path1, *pwd);
		FUNC32(conn, path1, GLOB_NOCHECK, NULL, &g);
		for (i = 0; g.gl_pathv[i] && !interrupted; i++) {
			if (!quiet)
				FUNC27("Removing %s\n", g.gl_pathv[i]);
			err = FUNC10(conn, g.gl_pathv[i]);
			if (err != 0 && err_abort)
				break;
		}
		break;
	case I_MKDIR:
		path1 = FUNC24(path1, *pwd);
		FUNC1(&a);
		a.flags |= SSH2_FILEXFER_ATTR_PERMISSIONS;
		a.perm = 0777;
		err = FUNC7(conn, path1, &a, 1);
		break;
	case I_RMDIR:
		path1 = FUNC24(path1, *pwd);
		err = FUNC11(conn, path1);
		break;
	case I_CHDIR:
		if (path1 == NULL || *path1 == '\0')
			path1 = FUNC38(startdir);
		path1 = FUNC24(path1, *pwd);
		if ((tmp = FUNC8(conn, path1)) == NULL) {
			err = 1;
			break;
		}
		if ((aa = FUNC13(conn, tmp, 0)) == NULL) {
			FUNC17(tmp);
			err = 1;
			break;
		}
		if (!(aa->flags & SSH2_FILEXFER_ATTR_PERMISSIONS)) {
			FUNC15("Can't change directory: Can't check target");
			FUNC17(tmp);
			err = 1;
			break;
		}
		if (!FUNC0(aa->perm)) {
			FUNC15("Can't change directory: \"%s\" is not "
			    "a directory", tmp);
			FUNC17(tmp);
			err = 1;
			break;
		}
		FUNC17(*pwd);
		*pwd = tmp;
		break;
	case I_LS:
		if (!path1) {
			FUNC6(conn, *pwd, *pwd, lflag);
			break;
		}

		/* Strip pwd off beginning of non-absolute paths */
		tmp = NULL;
		if (*path1 != '/')
			tmp = *pwd;

		path1 = FUNC24(path1, *pwd);
		err = FUNC4(conn, path1, tmp, lflag);
		break;
	case I_DF:
		/* Default to current directory if no path specified */
		if (path1 == NULL)
			path1 = FUNC38(*pwd);
		path1 = FUNC24(path1, *pwd);
		err = FUNC3(conn, path1, hflag, iflag);
		break;
	case I_LCHDIR:
		if (path1 == NULL || *path1 == '\0')
			path1 = FUNC38("~");
		tmp = FUNC36(path1, FUNC19());
		FUNC17(path1);
		path1 = tmp;
		if (FUNC2(path1) == -1) {
			FUNC15("Couldn't change local directory to "
			    "\"%s\": %s", path1, FUNC34(errno));
			err = 1;
		}
		break;
	case I_LMKDIR:
		if (FUNC26(path1, 0777) == -1) {
			FUNC15("Couldn't create local directory "
			    "\"%s\": %s", path1, FUNC34(errno));
			err = 1;
		}
		break;
	case I_LLS:
		FUNC22(cmd);
		break;
	case I_SHELL:
		FUNC23(cmd);
		break;
	case I_LUMASK:
		FUNC37(n_arg);
		FUNC29("Local umask: %03lo\n", n_arg);
		break;
	case I_CHMOD:
		path1 = FUNC24(path1, *pwd);
		FUNC1(&a);
		a.flags |= SSH2_FILEXFER_ATTR_PERMISSIONS;
		a.perm = n_arg;
		FUNC32(conn, path1, GLOB_NOCHECK, NULL, &g);
		for (i = 0; g.gl_pathv[i] && !interrupted; i++) {
			if (!quiet)
				FUNC27("Changing mode on %s\n",
				    g.gl_pathv[i]);
			err = FUNC12(conn, g.gl_pathv[i], &a);
			if (err != 0 && err_abort)
				break;
		}
		break;
	case I_CHOWN:
	case I_CHGRP:
		path1 = FUNC24(path1, *pwd);
		FUNC32(conn, path1, GLOB_NOCHECK, NULL, &g);
		for (i = 0; g.gl_pathv[i] && !interrupted; i++) {
			if (!(aa = FUNC13(conn, g.gl_pathv[i], 0))) {
				if (err_abort) {
					err = -1;
					break;
				} else
					continue;
			}
			if (!(aa->flags & SSH2_FILEXFER_ATTR_UIDGID)) {
				FUNC15("Can't get current ownership of "
				    "remote file \"%s\"", g.gl_pathv[i]);
				if (err_abort) {
					err = -1;
					break;
				} else
					continue;
			}
			aa->flags &= SSH2_FILEXFER_ATTR_UIDGID;
			if (cmdnum == I_CHOWN) {
				if (!quiet)
					FUNC27("Changing owner on %s\n",
					    g.gl_pathv[i]);
				aa->uid = n_arg;
			} else {
				if (!quiet)
					FUNC27("Changing group on %s\n",
					    g.gl_pathv[i]);
				aa->gid = n_arg;
			}
			err = FUNC12(conn, g.gl_pathv[i], aa);
			if (err != 0 && err_abort)
				break;
		}
		break;
	case I_PWD:
		FUNC27("Remote working directory: %s\n", *pwd);
		break;
	case I_LPWD:
		if (!FUNC18(path_buf, sizeof(path_buf))) {
			FUNC15("Couldn't get local cwd: %s", FUNC34(errno));
			err = -1;
			break;
		}
		FUNC27("Local working directory: %s\n", path_buf);
		break;
	case I_QUIT:
		/* Processed below */
		break;
	case I_HELP:
		FUNC21();
		break;
	case I_VERSION:
		FUNC29("SFTP protocol version %u\n", FUNC33(conn));
		break;
	case I_PROGRESS:
		showprogress = !showprogress;
		if (showprogress)
			FUNC29("Progress meter enabled\n");
		else
			FUNC29("Progress meter disabled\n");
		break;
	default:
		FUNC16("%d is not implemented", cmdnum);
	}

	if (g.gl_pathc)
		FUNC20(&g);
	FUNC17(path1);
	FUNC17(path2);

	/* If an unignored error occurs in batch mode we should abort. */
	if (err_abort && err != 0)
		return (-1);
	else if (cmdnum == I_QUIT)
		return (1);

	return (0);
}