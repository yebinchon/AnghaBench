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
struct TYPE_9__ {TYPE_1__* script; } ;
struct TYPE_8__ {int sh_master; int sh_slave; struct TYPE_8__* sh_prompt; scalar_t__ sh_pid; } ;
typedef  TYPE_1__ SCRIPT ;
typedef  TYPE_2__ SCR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SC_SCRIPT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,long,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

int
FUNC5(SCR *sp)
{
	SCRIPT *sc;

	if ((sc = sp->script) == NULL)
		return (0);

	/* Turn off the script flags. */
	FUNC0(sp, SC_SCRIPT);
	FUNC4(sp);

	/* Close down the parent's file descriptors. */
	if (sc->sh_master != -1)
	    (void)FUNC1(sc->sh_master);
	if (sc->sh_slave != -1)
	    (void)FUNC1(sc->sh_slave);

	/* This should have killed the child. */
	(void)FUNC3(sp, (long)sc->sh_pid, "script-shell", 0, 0);

	/* Free memory. */
	FUNC2(sc->sh_prompt);
	FUNC2(sc);
	sp->script = NULL;

	return (0);
}