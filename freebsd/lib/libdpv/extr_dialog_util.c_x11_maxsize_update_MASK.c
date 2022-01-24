#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct winsize {int dummy; } ;
struct TYPE_3__ {unsigned short ws_row; unsigned short ws_col; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int LINE_MAX ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  USHRT_MAX ; 
 scalar_t__ debug ; 
 char* dialog ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int) ; 
 TYPE_1__* maxsize ; 
 int /*<<< orphan*/  FUNC4 (void*,char,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*) ; 
 char* FUNC8 (char*,char) ; 
 scalar_t__ FUNC9 (char*,char*,int) ; 
 scalar_t__ FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const**) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 

__attribute__((used)) static void
FUNC12(void)
{
	FILE *f = NULL;
	char *cols;
	char *cp;
	char *rows;
	char cmdbuf[LINE_MAX];
	char rbuf[LINE_MAX];

	if (maxsize == NULL) {
		if ((maxsize = FUNC3(sizeof(struct winsize))) == NULL)
			FUNC0(EXIT_FAILURE, "Out of memory?!");
		FUNC4((void *)maxsize, '\0', sizeof(struct winsize));
	}

	/* Assemble the command necessary to get X11 sizes */
	FUNC7(cmdbuf, LINE_MAX, "%s --print-maxsize 2>&1", dialog);

	FUNC1(STDIN_FILENO); /* prevent popen(3) from seeking on stdin */

	if ((f = FUNC6(cmdbuf, "r")) == NULL) {
		if (debug)
			FUNC11("WARNING! Command `%s' failed", cmdbuf);
		return;
	}

	/* Read in the line returned from Xdialog(1) */
	if ((FUNC2(rbuf, LINE_MAX, f) == NULL) || (FUNC5(f) < 0))
		return;

	/* Check for X11-related errors */
	if (FUNC9(rbuf, "Xdialog: Error", 14) == 0)
		return;

	/* Parse expected output: MaxSize: YY, XXX */
	if ((rows = FUNC8(rbuf, ' ')) == NULL)
		return;
	if ((cols = FUNC8(rows, ',')) != NULL) {
		/* strtonum(3) doesn't like trailing junk */
		*(cols++) = '\0';
		if ((cp = FUNC8(cols, '\n')) != NULL)
			*cp = '\0';
	}

	/* Convert to unsigned short */
	maxsize->ws_row = (unsigned short)FUNC10(
	    rows, 0, USHRT_MAX, (const char **)NULL);
	maxsize->ws_col = (unsigned short)FUNC10(
	    cols, 0, USHRT_MAX, (const char **)NULL);
}