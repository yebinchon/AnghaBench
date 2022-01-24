#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int nargs; int /*<<< orphan*/ ** args; TYPE_1__* fcncell; } ;
struct TYPE_3__ {int /*<<< orphan*/  nval; } ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  Cell ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_2__* fp ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

Cell *FUNC3(Node **a, int n)	/* nth argument of a function */
{

	n = FUNC2(a[0]);	/* argument number, counting from 0 */
	   FUNC1( ("arg(%d), fp->nargs=%d\n", n, fp->nargs) );
	if (n+1 > fp->nargs)
		FUNC0("argument #%d of function %s was not supplied",
			n+1, fp->fcncell->nval);
	return fp->args[n];
}