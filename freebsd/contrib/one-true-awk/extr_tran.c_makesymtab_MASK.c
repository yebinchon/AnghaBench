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
struct TYPE_3__ {int size; int /*<<< orphan*/ ** tab; scalar_t__ nelem; } ;
typedef  int /*<<< orphan*/  Cell ;
typedef  TYPE_1__ Array ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (int) ; 

Array *FUNC3(int n)	/* make a new symbol table */
{
	Array *ap;
	Cell **tp;

	ap = (Array *) FUNC2(sizeof(Array));
	tp = (Cell **) FUNC1(n, sizeof(Cell *));
	if (ap == NULL || tp == NULL)
		FUNC0("out of space in makesymtab");
	ap->nelem = 0;
	ap->size = n;
	ap->tab = tp;
	return(ap);
}