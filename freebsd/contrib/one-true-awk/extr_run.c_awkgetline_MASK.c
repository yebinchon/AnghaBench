#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  tval; int /*<<< orphan*/  sval; void* fval; } ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_1__ Cell ;
typedef  int /*<<< orphan*/  Awkfloat ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int LE ; 
 int /*<<< orphan*/  NUM ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char**,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 TYPE_1__* FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/ * FUNC10 (int,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (char**,int*,int /*<<< orphan*/ *) ; 
 char* record ; 
 int recsize ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 

Cell *FUNC16(Node **a, int n)	/* get next line from specific input */
{		/* a[0] is variable, a[1] is operator, a[2] is filename */
	Cell *r, *x;
	extern Cell **fldtab;
	FILE *fp;
	char *buf;
	int bufsize = recsize;
	int mode;

	if ((buf = (char *) FUNC9(bufsize)) == NULL)
		FUNC0("out of memory in getline");

	FUNC3(stdout);	/* in case someone is waiting for a prompt */
	r = FUNC7();
	if (a[1] != NULL) {		/* getline < file */
		x = FUNC2(a[2]);		/* filename */
		mode = FUNC11(a[1]);
		if (mode == '|')		/* input pipe */
			mode = LE;	/* arbitrary flag */
		fp = FUNC10(mode, FUNC6(x));
		FUNC15(x);
		if (fp == NULL)
			n = -1;
		else
			n = FUNC12(&buf, &bufsize, fp);
		if (n <= 0) {
			;
		} else if (a[0] != NULL) {	/* getline var <file */
			x = FUNC2(a[0]);
			FUNC14(x, buf);
			if (FUNC8(x->sval)) {
				x->fval = FUNC1(x->sval);
				x->tval |= NUM;
			}
			FUNC15(x);
		} else {			/* getline <file */
			FUNC14(fldtab[0], buf);
			if (FUNC8(fldtab[0]->sval)) {
				fldtab[0]->fval = FUNC1(fldtab[0]->sval);
				fldtab[0]->tval |= NUM;
			}
		}
	} else {			/* bare getline; use current input */
		if (a[0] == NULL)	/* getline */
			n = FUNC5(&record, &recsize, 1);
		else {			/* getline var */
			n = FUNC5(&buf, &bufsize, 0);
			x = FUNC2(a[0]);
			FUNC14(x, buf);
			if (FUNC8(x->sval)) {
				x->fval = FUNC1(x->sval);
				x->tval |= NUM;
			}
			FUNC15(x);
		}
	}
	FUNC13(r, (Awkfloat) n);
	FUNC4(buf);
	return r;
}