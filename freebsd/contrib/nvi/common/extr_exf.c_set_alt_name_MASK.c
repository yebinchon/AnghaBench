#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * alt_name; } ;
typedef  TYPE_1__ SCR ;

/* Variables and functions */
 int /*<<< orphan*/  M_SYSERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 

void
FUNC3(
	SCR *sp,
	char *name)
{
	if (sp->alt_name != NULL)
		FUNC0(sp->alt_name);
	if (name == NULL)
		sp->alt_name = NULL;
	else if ((sp->alt_name = FUNC2(name)) == NULL)
		FUNC1(sp, M_SYSERR, NULL);
}