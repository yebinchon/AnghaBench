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
struct urwlock {int rw_flags; int rw_state; } ;
typedef  int int32_t ;

/* Variables and functions */
 int EAGAIN ; 
 int EBUSY ; 
 scalar_t__ URWLOCK_MAX_READERS ; 
 int URWLOCK_PREFER_READER ; 
 scalar_t__ FUNC0 (int) ; 
 int URWLOCK_WRITE_OWNER ; 
 int URWLOCK_WRITE_WAITERS ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int*,int,int) ; 

__attribute__((used)) static inline int
FUNC3(struct urwlock *rwlock, int flags)
{
	int32_t state, wrflags;

	if ((flags & URWLOCK_PREFER_READER) != 0 ||
	    (rwlock->rw_flags & URWLOCK_PREFER_READER) != 0)
		wrflags = URWLOCK_WRITE_OWNER;
	else
		wrflags = URWLOCK_WRITE_OWNER | URWLOCK_WRITE_WAITERS;
	state = rwlock->rw_state;
	while (!(state & wrflags)) {
		if (FUNC1(FUNC0(state) ==
		    URWLOCK_MAX_READERS))
			return (EAGAIN);
		if (FUNC2(&rwlock->rw_state, state, state + 1))
			return (0);
		state = rwlock->rw_state;
	}

	return (EBUSY);
}