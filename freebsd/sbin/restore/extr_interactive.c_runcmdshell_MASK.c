#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct entry {int e_flags; int /*<<< orphan*/  e_ino; } ;
struct TYPE_2__ {void* gl_stat; void* gl_lstat; int /*<<< orphan*/  gl_closedir; int /*<<< orphan*/  gl_readdir; int /*<<< orphan*/  gl_opendir; int /*<<< orphan*/  gl_flags; } ;
struct arglist {scalar_t__ freeglob; TYPE_1__ glob; scalar_t__ argcnt; } ;
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  ino_t ;
typedef  int /*<<< orphan*/  curdir ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  FORCE ; 
 int /*<<< orphan*/  GLOB_ALTDIRFUNC ; 
 int /*<<< orphan*/  LEAF ; 
 int MAXPATHLEN ; 
 int NEW ; 
 int /*<<< orphan*/  addfile ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  deletefile ; 
 int /*<<< orphan*/  dflag ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*,int,struct arglist*) ; 
 int /*<<< orphan*/  glob_readdir ; 
 void* glob_stat ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct entry* FUNC9 (char*) ; 
 int /*<<< orphan*/  mflag ; 
 int /*<<< orphan*/ * nextarg ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  reset ; 
 int /*<<< orphan*/  rst_closedir ; 
 int /*<<< orphan*/  rst_opendir ; 
 int runshell ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vflag ; 
 scalar_t__ volno ; 

void
FUNC19(void)
{
	struct entry *np;
	ino_t ino;
	struct arglist arglist;
	char curdir[MAXPATHLEN];
	char name[MAXPATHLEN];
	char cmd[BUFSIZ];

	arglist.freeglob = 0;
	arglist.argcnt = 0;
	arglist.glob.gl_flags = GLOB_ALTDIRFUNC;
	arglist.glob.gl_opendir = rst_opendir;
	arglist.glob.gl_readdir = glob_readdir;
	arglist.glob.gl_closedir = rst_closedir;
	arglist.glob.gl_lstat = glob_stat;
	arglist.glob.gl_stat = glob_stat;
	FUNC0("/", curdir, sizeof(curdir));
loop:
	if (FUNC14(reset) != 0) {
		if (arglist.freeglob != 0) {
			arglist.freeglob = 0;
			arglist.argcnt = 0;
			FUNC7(&arglist.glob);
		}
		nextarg = NULL;
		volno = 0;
	}
	runshell = 1;
	FUNC6(curdir, cmd, name, sizeof(name), &arglist);
	switch (cmd[0]) {
	/*
	 * Add elements to the extraction list.
	 */
	case 'a':
		if (FUNC17(cmd, "add", FUNC16(cmd)) != 0)
			goto bad;
		ino = FUNC4(name);
		if (ino == 0)
			break;
		if (mflag)
			FUNC10(name);
		FUNC18(name, ino, addfile);
		break;
	/*
	 * Change working directory.
	 */
	case 'c':
		if (FUNC17(cmd, "cd", FUNC16(cmd)) != 0)
			goto bad;
		ino = FUNC4(name);
		if (ino == 0)
			break;
		if (FUNC8(ino) == LEAF) {
			FUNC5(stderr, "%s: not a directory\n", name);
			break;
		}
		(void) FUNC15(curdir, name);
		break;
	/*
	 * Delete elements from the extraction list.
	 */
	case 'd':
		if (FUNC17(cmd, "delete", FUNC16(cmd)) != 0)
			goto bad;
		np = FUNC9(name);
		if (np == NULL || (np->e_flags & NEW) == 0) {
			FUNC5(stderr, "%s: not on extraction list\n", name);
			break;
		}
		FUNC18(name, np->e_ino, deletefile);
		break;
	/*
	 * Extract the requested list.
	 */
	case 'e':
		if (FUNC17(cmd, "extract", FUNC16(cmd)) != 0)
			goto bad;
		FUNC2();
		FUNC3();
		FUNC13(0);
		if (dflag)
			FUNC1();
		volno = 0;
		break;
	/*
	 * List available commands.
	 */
	case 'h':
		if (FUNC17(cmd, "help", FUNC16(cmd)) != 0)
			goto bad;
	case '?':
		FUNC5(stderr, "%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s",
			"Available commands are:\n",
			"\tls [arg] - list directory\n",
			"\tcd arg - change directory\n",
			"\tpwd - print current directory\n",
			"\tadd [arg] - add `arg' to list of",
			" files to be extracted\n",
			"\tdelete [arg] - delete `arg' from",
			" list of files to be extracted\n",
			"\textract - extract requested files\n",
			"\tsetmodes - set modes of requested directories\n",
			"\tquit - immediately exit program\n",
			"\twhat - list dump header information\n",
			"\tverbose - toggle verbose flag",
			" (useful with ``ls'')\n",
			"\thelp or `?' - print this list\n",
			"If no `arg' is supplied, the current",
			" directory is used\n");
		break;
	/*
	 * List a directory.
	 */
	case 'l':
		if (FUNC17(cmd, "ls", FUNC16(cmd)) != 0)
			goto bad;
		FUNC12(name, curdir);
		break;
	/*
	 * Print current directory.
	 */
	case 'p':
		if (FUNC17(cmd, "pwd", FUNC16(cmd)) != 0)
			goto bad;
		if (curdir[1] == '\0')
			FUNC5(stderr, "/\n");
		else
			FUNC5(stderr, "%s\n", &curdir[1]);
		break;
	/*
	 * Quit.
	 */
	case 'q':
		if (FUNC17(cmd, "quit", FUNC16(cmd)) != 0)
			goto bad;
		return;
	case 'x':
		if (FUNC17(cmd, "xit", FUNC16(cmd)) != 0)
			goto bad;
		return;
	/*
	 * Toggle verbose mode.
	 */
	case 'v':
		if (FUNC17(cmd, "verbose", FUNC16(cmd)) != 0)
			goto bad;
		if (vflag) {
			FUNC5(stderr, "verbose mode off\n");
			vflag = 0;
			break;
		}
		FUNC5(stderr, "verbose mode on\n");
		vflag++;
		break;
	/*
	 * Just restore requested directory modes.
	 */
	case 's':
		if (FUNC17(cmd, "setmodes", FUNC16(cmd)) != 0)
			goto bad;
		FUNC13(FORCE);
		break;
	/*
	 * Print out dump header information.
	 */
	case 'w':
		if (FUNC17(cmd, "what", FUNC16(cmd)) != 0)
			goto bad;
		FUNC11();
		break;
	/*
	 * Turn on debugging.
	 */
	case 'D':
		if (FUNC17(cmd, "Debug", FUNC16(cmd)) != 0)
			goto bad;
		if (dflag) {
			FUNC5(stderr, "debugging mode off\n");
			dflag = 0;
			break;
		}
		FUNC5(stderr, "debugging mode on\n");
		dflag++;
		break;
	/*
	 * Unknown command.
	 */
	default:
	bad:
		FUNC5(stderr, "%s: unknown command; type ? for help\n", cmd);
		break;
	}
	goto loop;
}