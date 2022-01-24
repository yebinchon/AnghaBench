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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void volatile*) ; 
 void volatile* BUS_ADRALN ; 
 void volatile* SIGBUS ; 
 scalar_t__ addr ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(int signo, siginfo_t *info, void *ptr)
{

	FUNC3("si_addr = %p\n", info->si_addr);
	FUNC4(signo, info, (ucontext_t *)ptr);

	FUNC0(info->si_signo, SIGBUS);
	FUNC0(info->si_errno, 0);
	FUNC0(info->si_code, BUS_ADRALN);

#if defined(__i386__) || defined(__x86_64__)
	FUNC1("x86 architecture does not correctly "
	    "report the address where the unaligned access occured");
#endif
	FUNC0(info->si_addr, (volatile void *)addr);

	FUNC2();
	/* NOTREACHED */
}