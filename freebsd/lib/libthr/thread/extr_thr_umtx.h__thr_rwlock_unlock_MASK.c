#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct urwlock {int rw_state; } ;
typedef  int int32_t ;

/* Variables and functions */
 int EPERM ; 
 int FUNC0 (int) ; 
 int URWLOCK_READ_WAITERS ; 
 int URWLOCK_WRITE_OWNER ; 
 int URWLOCK_WRITE_WAITERS ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct urwlock*) ; 
 scalar_t__ FUNC3 (int*,int,int) ; 

__attribute__((used)) static inline int
FUNC4(struct urwlock *rwlock)
{
	int32_t state;

	state = rwlock->rw_state;
	if ((state & URWLOCK_WRITE_OWNER) != 0) {
		if (FUNC3(&rwlock->rw_state,
		    URWLOCK_WRITE_OWNER, 0))
			return (0);
	} else {
		for (;;) {
			if (FUNC1(FUNC0(state) == 0))
				return (EPERM);
			if (!((state & (URWLOCK_WRITE_WAITERS |
			    URWLOCK_READ_WAITERS)) != 0 &&
			    FUNC0(state) == 1)) {
				if (FUNC3(&rwlock->rw_state,
				    state, state - 1))
					return (0);
				state = rwlock->rw_state;
			} else {
				break;
			}
		}
    	}
    	return (FUNC2(rwlock));
}