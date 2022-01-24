#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* cnext; } ;
typedef  TYPE_1__ Cell ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int,int) ; 
 TYPE_1__ tempcell ; 
 TYPE_1__* tmps ; 

Cell *FUNC2(void)	/* get a tempcell */
{	int i;
	Cell *x;

	if (!tmps) {
		tmps = (Cell *) FUNC1(100, sizeof(Cell));
		if (!tmps)
			FUNC0("out of space for temporaries");
		for(i = 1; i < 100; i++)
			tmps[i-1].cnext = &tmps[i];
		tmps[i-1].cnext = NULL;
	}
	x = tmps;
	tmps = x->cnext;
	*x = tempcell;
	return(x);
}