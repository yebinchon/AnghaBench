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
typedef  int /*<<< orphan*/  ucontext_t ;
struct TYPE_4__ {int /*<<< orphan*/  si_addr; int /*<<< orphan*/  si_code; int /*<<< orphan*/  si_errno; int /*<<< orphan*/  si_signo; } ;
typedef  TYPE_1__ siginfo_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*) ; 
 void* SEGV_MAPERR ; 
 void* SIGSEGV ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(int signo, siginfo_t *info, void *ptr)
{

	FUNC2(signo, info, (ucontext_t *)ptr);

	FUNC0(info->si_signo, SIGSEGV);
	FUNC0(info->si_errno, 0);
	FUNC0(info->si_code, SEGV_MAPERR);
	FUNC0(info->si_addr, (void *)0);

	FUNC1();
	/* NOTREACHED */
}