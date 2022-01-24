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
struct TYPE_7__ {scalar_t__ Status; } ;
typedef  TYPE_1__ t_PXENV_UNLOAD_STACK ;
typedef  TYPE_1__ t_PXENV_UNDI_SHUTDOWN ;

/* Variables and functions */
 int /*<<< orphan*/  PXENV_UNDI_SHUTDOWN ; 
 int /*<<< orphan*/  PXENV_UNLOAD_STACK ; 
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ pxe_debug ; 

__attribute__((used)) static void
FUNC5(void)
{
	t_PXENV_UNLOAD_STACK *unload_stack_p;
	t_PXENV_UNDI_SHUTDOWN *undi_shutdown_p;

	if (&pxe_call == NULL)
		return;

	undi_shutdown_p = FUNC0(sizeof(*undi_shutdown_p));
	if (undi_shutdown_p != NULL) {
		FUNC2(undi_shutdown_p, sizeof(*undi_shutdown_p));
		FUNC4(PXENV_UNDI_SHUTDOWN, undi_shutdown_p);

#ifdef PXE_DEBUG
		if (pxe_debug && undi_shutdown_p->Status != 0)
			printf("pxe_cleanup: UNDI_SHUTDOWN failed %x\n",
			    undi_shutdown_p->Status);
#endif
		FUNC1(undi_shutdown_p, sizeof(*undi_shutdown_p));
	}

	unload_stack_p = FUNC0(sizeof(*unload_stack_p));
	if (unload_stack_p != NULL) {
		FUNC2(unload_stack_p, sizeof(*unload_stack_p));
		FUNC4(PXENV_UNLOAD_STACK, unload_stack_p);

#ifdef PXE_DEBUG
		if (pxe_debug && unload_stack_p->Status != 0)
			printf("pxe_cleanup: UNLOAD_STACK failed %x\n",
			    unload_stack_p->Status);
#endif
		FUNC1(unload_stack_p, sizeof(*unload_stack_p));
	}
}