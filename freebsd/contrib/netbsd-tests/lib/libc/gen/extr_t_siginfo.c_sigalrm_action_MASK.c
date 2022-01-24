#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ucontext_t ;
struct TYPE_5__ {int /*<<< orphan*/  sival_int; } ;
struct TYPE_6__ {TYPE_1__ si_value; int /*<<< orphan*/  si_code; int /*<<< orphan*/  si_signo; } ;
typedef  TYPE_2__ siginfo_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ITIMER_REAL ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  SI_TIMER ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(int signo, siginfo_t *info, void *ptr)
{

	FUNC2(signo, info, (ucontext_t *)ptr);

	FUNC0(info->si_signo, SIGALRM);
	FUNC0(info->si_code, SI_TIMER);
	FUNC0(info->si_value.sival_int, ITIMER_REAL);

	FUNC1();
	/* NOTREACHED */
}