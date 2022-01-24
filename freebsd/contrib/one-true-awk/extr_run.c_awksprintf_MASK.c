#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {char* sval; int /*<<< orphan*/  tval; } ;
struct TYPE_11__ {struct TYPE_11__* nnext; } ;
typedef  TYPE_1__ Node ;
typedef  TYPE_2__ Cell ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  STR ; 
 TYPE_2__* FUNC1 (TYPE_1__*) ; 
 int FUNC2 (char**,int*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_2__* FUNC4 () ; 
 scalar_t__ FUNC5 (int) ; 
 int recsize ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

Cell *FUNC7(Node **a, int n)		/* sprintf(a[0]) */
{
	Cell *x;
	Node *y;
	char *buf;
	int bufsz=3*recsize;

	if ((buf = (char *) FUNC5(bufsz)) == NULL)
		FUNC0("out of memory in awksprintf");
	y = a[0]->nnext;
	x = FUNC1(a[0]);
	if (FUNC2(&buf, &bufsz, FUNC3(x), y) == -1)
		FUNC0("sprintf string %.30s... too long.  can't happen.", buf);
	FUNC6(x);
	x = FUNC4();
	x->sval = buf;
	x->tval = STR;
	return(x);
}