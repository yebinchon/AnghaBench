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
struct trapframe {int /*<<< orphan*/  tf_trapno; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct trapframe*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct trapframe*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct trapframe*) ; 

void
FUNC3(struct trapframe *frame)
{

#ifdef KDTRACE_HOOKS
	if (dtrace_trap_func != NULL &&
	    (*dtrace_trap_func)(frame, frame->tf_trapno) != 0)
		return;
#endif
	FUNC2(frame);
}