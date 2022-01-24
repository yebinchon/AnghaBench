#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int md_spinlock_count; int /*<<< orphan*/  md_saved_daif; } ;
struct thread {TYPE_1__ td_md; } ;
typedef  int /*<<< orphan*/  register_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC1 () ; 

void
FUNC2(void)
{
	struct thread *td;
	register_t daif;

	td = curthread;
	if (td->td_md.md_spinlock_count == 0) {
		daif = FUNC1();
		td->td_md.md_spinlock_count = 1;
		td->td_md.md_saved_daif = daif;
	} else
		td->td_md.md_spinlock_count++;
	FUNC0();
}