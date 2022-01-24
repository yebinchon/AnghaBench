#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct stat {int /*<<< orphan*/  st_ino; int /*<<< orphan*/  st_dev; } ;
struct TYPE_11__ {int /*<<< orphan*/  gp; } ;
typedef  TYPE_1__ SCR ;
typedef  int /*<<< orphan*/  CHAR_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,scalar_t__,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  M_SYSERR ; 
#define  NOEXIST 130 
#define  NOPERM 129 
 int /*<<< orphan*/  O_EXRC ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
#define  RCOK 128 
 int SC_EXIT ; 
 int SC_EXIT_FORCE ; 
 char* _PATH_EXRC ; 
 char* _PATH_NEXRC ; 
 char* _PATH_SYSEXRC ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,char*,int /*<<< orphan*/ *,size_t,int,int /*<<< orphan*/ ) ; 
 int const FUNC7 (TYPE_1__*,struct stat*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (char*) ; 
 char* FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (char*) ; 

int
FUNC13(SCR *sp)
{
	struct stat hsb, lsb;
	char *p, *path;
	CHAR_T *wp;
	size_t wlen;

	/*
	 * Source the system, environment, $HOME and local .exrc values.
	 * Vi historically didn't check $HOME/.exrc if the environment
	 * variable EXINIT was set.  This is all done before the file is
	 * read in, because things in the .exrc information can set, for
	 * example, the recovery directory.
	 *
	 * !!!
	 * While nvi can handle any of the options settings of historic vi,
	 * the converse is not true.  Since users are going to have to have
	 * files and environmental variables that work with both, we use nvi
	 * versions of both the $HOME and local startup files if they exist,
	 * otherwise the historic ones.
	 *
	 * !!!
	 * For a discussion of permissions and when what .exrc files are
	 * read, see the comment above the exrc_isok() function below.
	 *
	 * !!!
	 * If the user started the historic of vi in $HOME, vi read the user's
	 * .exrc file twice, as $HOME/.exrc and as ./.exrc.  We avoid this, as
	 * it's going to make some commands behave oddly, and I can't imagine
	 * anyone depending on it.
	 */
	switch (FUNC7(sp, &hsb, _PATH_SYSEXRC, 1, 0)) {
	case NOEXIST:
	case NOPERM:
		break;
	case RCOK:
		if (FUNC5(sp, _PATH_SYSEXRC))
			return (1);
		break;
	}

	/* Run the commands. */
	if (FUNC1(sp->gp))
		(void)FUNC4(sp);
	if (FUNC2(sp, SC_EXIT | SC_EXIT_FORCE))
		return (0);

	if ((p = FUNC9("NEXINIT")) != NULL) {
		FUNC0(sp, p, FUNC12(p) + 1, wp, wlen);
		if (FUNC6(sp, "NEXINIT", wp, wlen - 1, 1, 0))
			return (1);
	} else if ((p = FUNC9("EXINIT")) != NULL) {
		FUNC0(sp, p, FUNC12(p) + 1, wp, wlen);
		if (FUNC6(sp, "EXINIT", wp, wlen - 1, 1, 0))
			return (1);
	} else if ((p = FUNC9("HOME")) != NULL && *p) {
		int st = 0;

		if ((path = FUNC10(p, _PATH_NEXRC)) == NULL) {
			FUNC11(sp, M_SYSERR, NULL);
			return (1);
		}
		switch (FUNC7(sp, &hsb, path, 0, 1)) {
		case NOEXIST:
			FUNC8(path);
			if ((path = FUNC10(p, _PATH_EXRC)) == NULL) {
				FUNC11(sp, M_SYSERR, NULL);
				return (1);
			}
			if (FUNC7(sp,
			    &hsb, path, 0, 1) == RCOK && FUNC5(sp, path))
				st = 1;
			break;
		case NOPERM:
			break;
		case RCOK:
			if (FUNC5(sp, path))
				st = 1;
			break;
		}
		FUNC8(path);
		if (st)
			return st;
	}

	/* Run the commands. */
	if (FUNC1(sp->gp))
		(void)FUNC4(sp);
	if (FUNC2(sp, SC_EXIT | SC_EXIT_FORCE))
		return (0);

	/* Previous commands may have set the exrc option. */
	if (FUNC3(sp, O_EXRC)) {
		switch (FUNC7(sp, &lsb, _PATH_NEXRC, 0, 0)) {
		case NOEXIST:
			if (FUNC7(sp, &lsb, _PATH_EXRC, 0, 0) == RCOK &&
			    (lsb.st_dev != hsb.st_dev ||
			    lsb.st_ino != hsb.st_ino) &&
			    FUNC5(sp, _PATH_EXRC))
				return (1);
			break;
		case NOPERM:
			break;
		case RCOK:
			if ((lsb.st_dev != hsb.st_dev ||
			    lsb.st_ino != hsb.st_ino) &&
			    FUNC5(sp, _PATH_NEXRC))
				return (1);
			break;
		}
		/* Run the commands. */
		if (FUNC1(sp->gp))
			(void)FUNC4(sp);
		if (FUNC2(sp, SC_EXIT | SC_EXIT_FORCE))
			return (0);
	}

	return (0);
}