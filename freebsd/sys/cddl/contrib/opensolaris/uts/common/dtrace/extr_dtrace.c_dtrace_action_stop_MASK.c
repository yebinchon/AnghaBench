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
struct proc {int dummy; } ;
struct TYPE_3__ {int t_dtrace_stop; int t_sig_check; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  SIGSTOP ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 struct proc* curproc ; 
 TYPE_1__* curthread ; 
 scalar_t__ dtrace_destructive_disallow ; 
 int /*<<< orphan*/  FUNC3 (struct proc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void)
{
	if (dtrace_destructive_disallow)
		return;

#ifdef illumos
	if (!curthread->t_dtrace_stop) {
		curthread->t_dtrace_stop = 1;
		curthread->t_sig_check = 1;
		aston(curthread);
	}
#else
	struct proc *p = curproc;
	FUNC0(p);
	FUNC3(p, SIGSTOP);
	FUNC1(p);
#endif
}