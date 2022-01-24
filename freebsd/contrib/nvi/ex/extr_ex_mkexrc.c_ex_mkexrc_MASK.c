#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct stat {int dummy; } ;
struct TYPE_5__ {int argc; int /*<<< orphan*/  iflags; TYPE_1__** argv; } ;
struct TYPE_4__ {int /*<<< orphan*/  len; int /*<<< orphan*/  bp; } ;
typedef  int /*<<< orphan*/  SCR ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_2__ EXCMD ;

/* Variables and functions */
 int /*<<< orphan*/  E_C_FORCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  M_ERR ; 
 int /*<<< orphan*/  M_INFO ; 
 int /*<<< orphan*/  M_SYSERR ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  SEQ_ABBREV ; 
 int /*<<< orphan*/  SEQ_COMMAND ; 
 int /*<<< orphan*/  SEQ_INPUT ; 
 int S_IRGRP ; 
 int S_IROTH ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 char* _PATH_EXRC ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int errno ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC8 (char*,int,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,struct stat*) ; 

int
FUNC13(SCR *sp, EXCMD *cmdp)
{
	struct stat sb;
	FILE *fp;
	int fd, sverrno;
	char *fname;
	size_t flen;

	switch (cmdp->argc) {
	case 0:
		fname = _PATH_EXRC;
		break;
	case 1:
		FUNC1(sp, cmdp->argv[0]->bp, cmdp->argv[0]->len + 1, 
			    fname, flen);
		FUNC11(sp, fname);
		break;
	default:
		FUNC2();
	}

	if (!FUNC0(cmdp->iflags, E_C_FORCE) && !FUNC12(fname, &sb)) {
		FUNC7(sp, M_ERR, fname,
		    "137|%s exists, not written; use ! to override");
		return (1);
	}

	/* Create with max permissions of rw-r--r--. */
	if ((fd = FUNC8(fname, O_CREAT | O_TRUNC | O_WRONLY,
	    S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH)) < 0) {
		FUNC7(sp, M_SYSERR, fname, "%s");
		return (1);
	}

	if ((fp = FUNC5(fd, "w")) == NULL) {
		sverrno = errno;
		(void)FUNC3(fd);
		goto e2;
	}

	if (FUNC10(sp, fp, "abbreviate ", SEQ_ABBREV) || FUNC6(fp))
		goto e1;
	if (FUNC10(sp, fp, "map ", SEQ_COMMAND) || FUNC6(fp))
		goto e1;
	if (FUNC10(sp, fp, "map! ", SEQ_INPUT) || FUNC6(fp))
		goto e1;
	if (FUNC9(sp, fp) || FUNC6(fp))
		goto e1;
	if (FUNC4(fp)) {
		sverrno = errno;
		goto e2;
	}

	FUNC7(sp, M_INFO, fname, "138|New exrc file: %s");
	return (0);

e1:	sverrno = errno;
	(void)FUNC4(fp);
e2:	errno = sverrno;
	FUNC7(sp, M_SYSERR, fname, "%s");
	return (1);
}