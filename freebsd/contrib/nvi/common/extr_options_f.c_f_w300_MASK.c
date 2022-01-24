#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
struct TYPE_7__ {TYPE_1__* gp; } ;
struct TYPE_6__ {scalar_t__ (* scr_baud ) (TYPE_2__*,int*) ;} ;
typedef  TYPE_2__ SCR ;
typedef  int /*<<< orphan*/  OPTION ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,char*,int*) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int*) ; 

int
FUNC2(
	SCR *sp,
	OPTION *op,
	char *str,
	u_long *valp)
{
	u_long v;

	/* Historical behavior for w300 was < 1200. */
	if (sp->gp->scr_baud(sp, &v))
		return (1);
	if (v >= 1200)
		return (0);

	return (FUNC0(sp, op, str, valp));
}