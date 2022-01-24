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
struct stat {int st_mode; scalar_t__ st_size; } ;
struct dirent {char* d_name; int d_type; } ;
typedef  int /*<<< orphan*/  lbuf ;

/* Variables and functions */
 int CMD_ERROR ; 
 int CMD_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int,char**,char*) ; 
 int FUNC4 (char**) ; 
 char* FUNC5 (scalar_t__) ; 
 int optind ; 
 int optreset ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,...) ; 
 struct dirent* FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,char*,char*) ; 
 scalar_t__ FUNC13 (char*,struct stat*) ; 
 scalar_t__ FUNC14 (char*,char*) ; 
 scalar_t__ FUNC15 (char*) ; 
 int* typestr ; 

__attribute__((used)) static int
FUNC16(int argc, char *argv[])
{
    int		fd;
    struct stat	sb;
    struct	dirent *d;
    char	*buf, *path;
    char	lbuf[128];		/* one line */
    int		result, ch;
    int		verbose;

    result = CMD_OK;
    fd = -1;
    verbose = 0;
    optind = 1;
    optreset = 1;
    while ((ch = FUNC3(argc, argv, "l")) != -1) {
	switch (ch) {
	case 'l':
	    verbose = 1;
	    break;
	case '?':
	default:
	    /* getopt has already reported an error */
	    return (CMD_OK);
	}
    }
    argv += (optind - 1);
    argc -= (optind - 1);

    if (argc < 2) {
	path = "";
    } else {
	path = argv[1];
    }

    if (FUNC13(path, &sb) == 0 && !FUNC0(sb.st_mode)) {
	if (verbose) {
	    FUNC9(" %c %8d %s\n",
		typestr[sb.st_mode >> 12],
		(int)sb.st_size, path);
	} else {
	    FUNC9(" %c  %s\n",
		typestr[sb.st_mode >> 12], path);
	}
	return (CMD_OK);
    }

    fd = FUNC4(&path);
    if (fd == -1) {
	result = CMD_ERROR;
	goto out;
    }
    FUNC7();
    FUNC8(path);
    FUNC8("\n");

    while ((d = FUNC10(fd)) != NULL) {
	if (FUNC14(d->d_name, ".") && FUNC14(d->d_name, "..")) {
	    if (d->d_type == 0 || verbose) {
		/* stat the file, if possible */
		sb.st_size = 0;
		sb.st_mode = 0;
		buf = FUNC5(FUNC15(path) + FUNC15(d->d_name) + 2);
		if (buf != NULL) {
		    FUNC12(buf, "%s/%s", path, d->d_name);
		    /* ignore return, could be symlink, etc. */
		    if (FUNC13(buf, &sb)) {
			sb.st_size = 0;
			sb.st_mode = 0;
		    }
		    FUNC2(buf);
		}
	    }
	    if (verbose) {
		FUNC11(lbuf, sizeof(lbuf), " %c %8d %s\n",
		    typestr[d->d_type? d->d_type:sb.st_mode >> 12],
		    (int)sb.st_size, d->d_name);
	    } else {
		FUNC11(lbuf, sizeof(lbuf), " %c  %s\n",
		    typestr[d->d_type? d->d_type:sb.st_mode >> 12], d->d_name);
	    }
	    if (FUNC8(lbuf))
		goto out;
	}
    }
 out:
    FUNC6();
    if (fd != -1)
	FUNC1(fd);
    FUNC2(path);		/* ls_getdir() did allocate path */
    return (result);
}