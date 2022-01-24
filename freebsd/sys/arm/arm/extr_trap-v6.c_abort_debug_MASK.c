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
typedef  scalar_t__ u_int ;
struct trapframe {int dummy; } ;
struct thread {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGTRAP ; 
 int /*<<< orphan*/  TRAP_BRKPT ; 
 int /*<<< orphan*/  T_BREAKPOINT ; 
 int /*<<< orphan*/  T_WATCHPOINT ; 
 int /*<<< orphan*/  FUNC0 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct trapframe*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*,struct trapframe*) ; 

__attribute__((used)) static __inline void
FUNC4(struct trapframe *tf, u_int fsr, u_int prefetch, bool usermode,
    u_int far)
{

	if (usermode) {
		struct thread *td;

		td = curthread;
		FUNC0(td, SIGTRAP, TRAP_BRKPT, far);
		FUNC3(td, tf);
	} else {
#ifdef KDB
		kdb_trap((prefetch) ? T_BREAKPOINT : T_WATCHPOINT, 0, tf);
#else
		FUNC2("No debugger in kernel.\n");
#endif
	}
}