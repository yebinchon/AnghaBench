#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct thread {struct proc* td_proc; } ;
struct proc {int /*<<< orphan*/  p_pid; } ;
struct TYPE_4__ {scalar_t__ ksi_signo; } ;
typedef  TYPE_1__ ksiginfo_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 int FUNC4 (struct thread*,struct proc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct thread*,scalar_t__,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC6(struct thread *td, struct thread *tdt, ksiginfo_t *ksi)
{
	struct proc *p;
	int error;

	p = tdt->td_proc;
	FUNC2(ksi->ksi_signo);
	FUNC0(p->p_pid);
	FUNC1(p);

	error = FUNC4(td, p, ksi->ksi_signo);
	if (error != 0 || ksi->ksi_signo == 0)
		goto out;

	FUNC5(tdt, ksi->ksi_signo, ksi);

out:
	FUNC3(p);
	return (error);
}