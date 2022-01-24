#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct TYPE_6__* nnext; } ;
typedef  TYPE_1__ Node ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  Cell ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * True ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ofsloc ; 
 int /*<<< orphan*/  orsloc ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

Cell *FUNC11(Node **a, int n)	/* print a[0] */
{
	Node *x;
	Cell *y;
	FILE *fp;

	if (a[1] == NULL)	/* a[1] is redirection operator, a[2] is file */
		fp = stdout;
	else
		fp = FUNC9(FUNC8(a[1]), a[2]);
	for (x = a[0]; x != NULL; x = x->nnext) {
		y = FUNC1(x);
		FUNC5(FUNC6(y), fp);
		FUNC10(y);
		if (x->nnext == NULL)
			FUNC5(FUNC7(orsloc), fp);
		else
			FUNC5(FUNC7(ofsloc), fp);
	}
	if (a[1] != NULL)
		FUNC3(fp);
	if (FUNC2(fp))
		FUNC0("write error on %s", FUNC4(fp));
	return(True);
}