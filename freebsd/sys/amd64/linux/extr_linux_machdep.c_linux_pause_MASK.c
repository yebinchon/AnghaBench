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
struct thread {int /*<<< orphan*/  td_sigmask; struct proc* td_proc; } ;
struct proc {int dummy; } ;
struct linux_pause_args {int dummy; } ;
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 int FUNC3 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pause ; 

int
FUNC4(struct thread *td, struct linux_pause_args *args)
{
	struct proc *p = td->td_proc;
	sigset_t sigmask;

	FUNC0(pause);

	FUNC1(p);
	sigmask = td->td_sigmask;
	FUNC2(p);
	return (FUNC3(td, sigmask));
}