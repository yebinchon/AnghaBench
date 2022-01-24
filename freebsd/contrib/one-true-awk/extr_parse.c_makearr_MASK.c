#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {char* sval; int /*<<< orphan*/  tval; int /*<<< orphan*/  nval; } ;
struct TYPE_8__ {scalar_t__* narg; } ;
typedef  TYPE_1__ Node ;
typedef  TYPE_2__ Cell ;

/* Variables and functions */
 int /*<<< orphan*/  ARR ; 
 int /*<<< orphan*/  NSYMTAB ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

Node *FUNC6(Node *p)
{
	Cell *cp;

	if (FUNC3(p)) {
		cp = (Cell *) (p->narg[0]);
		if (FUNC2(cp))
			FUNC0( "%s is a function, not an array", cp->nval );
		else if (!FUNC1(cp)) {
			FUNC5(cp->sval);
			cp->sval = (char *) FUNC4(NSYMTAB);
			cp->tval = ARR;
		}
	}
	return p;
}