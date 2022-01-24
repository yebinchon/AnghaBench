#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ttyent {int dummy; } ;
typedef  int /*<<< orphan*/  state_func_t ;
struct TYPE_6__ {struct TYPE_6__* se_next; } ;
typedef  TYPE_1__ session_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 struct ttyent* FUNC2 () ; 
 int /*<<< orphan*/  multi_user ; 
 TYPE_1__* FUNC3 (TYPE_1__*,struct ttyent*) ; 
 TYPE_1__* sessions ; 
 int /*<<< orphan*/  single_user ; 
 scalar_t__ FUNC4 () ; 

__attribute__((used)) static state_func_t
FUNC5(void)
{
	session_t *sp, *snext;
	struct ttyent *typ;

	/*
	 * Destroy any previous session state.
	 * There shouldn't be any, but just in case...
	 */
	for (sp = sessions; sp; sp = snext) {
		snext = sp->se_next;
		FUNC1(sp);
	}
	sessions = 0;
	if (FUNC4())
		return (state_func_t) single_user;

	/*
	 * Allocate a session entry for each active port.
	 * Note that sp starts at 0.
	 */
	while ((typ = FUNC2()) != NULL)
		if ((snext = FUNC3(sp, typ)) != NULL)
			sp = snext;

	FUNC0();

	return (state_func_t) multi_user;
}