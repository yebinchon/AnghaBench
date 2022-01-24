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
struct TYPE_2__ {int rw_state; } ;
struct rtld_lock {TYPE_1__ lock; } ;
struct pthread {int /*<<< orphan*/  rdlock_count; } ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct pthread*) ; 
 int URWLOCK_WRITE_OWNER ; 
 struct pthread* FUNC3 () ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC5(void *lock)
{
	struct pthread		*curthread;
	struct rtld_lock	*l;
	int32_t			state;
	int			errsave;

	curthread = FUNC3();
	FUNC1();
	l = (struct rtld_lock *)lock;
	
	state = l->lock.rw_state;
	if (FUNC4(&l->lock) == 0) {
		if ((state & URWLOCK_WRITE_OWNER) == 0)
			curthread->rdlock_count--;
		FUNC2(curthread);
	}
	FUNC0();
}