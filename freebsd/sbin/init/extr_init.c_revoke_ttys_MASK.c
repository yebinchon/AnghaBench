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
struct TYPE_3__ {int /*<<< orphan*/  se_device; int /*<<< orphan*/  se_process; int /*<<< orphan*/  se_flags; struct TYPE_3__* se_next; } ;
typedef  TYPE_1__ session_t ;

/* Variables and functions */
 int /*<<< orphan*/  SE_SHUTDOWN ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* sessions ; 

__attribute__((used)) static void
FUNC2(void)
{
	session_t *sp;

	for (sp = sessions; sp; sp = sp->se_next) {
		sp->se_flags |= SE_SHUTDOWN;
		FUNC0(sp->se_process, SIGHUP);
		FUNC1(sp->se_device);
	}
}