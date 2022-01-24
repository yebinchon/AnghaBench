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
struct TYPE_5__ {int tval; int /*<<< orphan*/  fval; int /*<<< orphan*/  sval; int /*<<< orphan*/  nval; } ;
typedef  TYPE_1__ Cell ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,int /*<<< orphan*/ ) ; 
 int FCN ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 

void FUNC3(Cell *vp, const char *rw)
{
	if (FUNC2(vp))
		FUNC0("can't %s %s; it's an array name.", rw, vp->nval);
	if (vp->tval & FCN)
		FUNC0("can't %s %s; it's a function.", rw, vp->nval);
	FUNC1("funny variable %p: n=%s s=\"%s\" f=%g t=%o",
		vp, vp->nval, vp->sval, vp->fval, vp->tval);
}