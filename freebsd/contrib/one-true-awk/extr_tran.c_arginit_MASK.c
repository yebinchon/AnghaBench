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
struct TYPE_3__ {char* sval; int /*<<< orphan*/  fval; } ;
typedef  TYPE_1__ Cell ;
typedef  double Awkfloat ;

/* Variables and functions */
 int /*<<< orphan*/ * ARGC ; 
 scalar_t__ ARGVtab ; 
 int ARR ; 
 int /*<<< orphan*/  NSYMTAB ; 
 int NUM ; 
 int STR ; 
 double FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (char*,char*,double,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 scalar_t__ symtab ; 

void FUNC5(int ac, char **av)	/* set up ARGV and ARGC */
{
	Cell *cp;
	int i;
	char temp[50];

	ARGC = &FUNC3("ARGC", "", (Awkfloat) ac, NUM, symtab)->fval;
	cp = FUNC3("ARGV", "", 0.0, ARR, symtab);
	ARGVtab = FUNC2(NSYMTAB);	/* could be (int) ARGC as well */
	cp->sval = (char *) ARGVtab;
	for (i = 0; i < ac; i++) {
		FUNC4(temp, "%d", i);
		if (FUNC1(*av))
			FUNC3(temp, *av, FUNC0(*av), STR|NUM, ARGVtab);
		else
			FUNC3(temp, *av, 0.0, STR, ARGVtab);
		av++;
	}
}