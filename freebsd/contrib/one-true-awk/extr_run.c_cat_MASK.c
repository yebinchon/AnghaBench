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
struct TYPE_7__ {char* sval; int /*<<< orphan*/  tval; } ;
typedef  int /*<<< orphan*/  Node ;
typedef  TYPE_1__ Cell ;

/* Variables and functions */
 int /*<<< orphan*/  STR ; 
 int /*<<< orphan*/  FUNC0 (char**,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  recsize ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

Cell *FUNC7(Node **a, int q)	/* a[0] cat a[1] */
{
	Cell *x, *y, *z;
	int n1, n2;
	char *s = NULL;
	int ssz = 0;

	x = FUNC1(a[0]);
	n1 = FUNC4(FUNC2(x));
	FUNC0(&s, &ssz, n1 + 1, recsize, 0, "cat1");
	(void) FUNC5(s, x->sval, ssz);

	y = FUNC1(a[1]);
	n2 = FUNC4(FUNC2(y));
	FUNC0(&s, &ssz, n1 + n2 + 1, recsize, 0, "cat2");
	(void) FUNC5(s + n1, y->sval, ssz - n1);

	FUNC6(x);
	FUNC6(y);

	z = FUNC3();
	z->sval = s;
	z->tval = STR;

	return(z);
}