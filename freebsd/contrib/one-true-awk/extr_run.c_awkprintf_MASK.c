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
struct TYPE_7__ {struct TYPE_7__* nnext; } ;
typedef  TYPE_1__ Node ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  Cell ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/ * True ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char**,int*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int recsize ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

Cell *FUNC13(Node **a, int n)		/* printf */
{	/* a[0] is list of args, starting with format string */
	/* a[1] is redirection operator, a[2] is redirection file */
	FILE *fp;
	Cell *x;
	Node *y;
	char *buf;
	int len;
	int bufsz=3*recsize;

	if ((buf = (char *) FUNC9(bufsz)) == NULL)
		FUNC0("out of memory in awkprintf");
	y = a[0]->nnext;
	x = FUNC1(a[0]);
	if ((len = FUNC5(&buf, &bufsz, FUNC8(x), y)) == -1)
		FUNC0("printf string %.30s... too long.  can't happen.", buf);
	FUNC12(x);
	if (a[1] == NULL) {
		/* fputs(buf, stdout); */
		FUNC7(buf, len, 1, stdout);
		if (FUNC2(stdout))
			FUNC0("write error on stdout");
	} else {
		fp = FUNC11(FUNC10(a[1]), a[2]);
		/* fputs(buf, fp); */
		FUNC7(buf, len, 1, fp);
		FUNC3(fp);
		if (FUNC2(fp))
			FUNC0("write error on %s", FUNC4(fp));
	}
	FUNC6(buf);
	return(True);
}