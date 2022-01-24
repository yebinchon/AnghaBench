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
struct thread {int dummy; } ;
struct linux_sigsuspend_args {int /*<<< orphan*/  mask; } ;
typedef  int /*<<< orphan*/  sigset_t ;
struct TYPE_4__ {int /*<<< orphan*/  __mask; } ;
typedef  TYPE_1__ l_sigset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__) ; 
 int FUNC1 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 

int
FUNC3(struct thread *td, struct linux_sigsuspend_args *args)
{
	sigset_t sigmask;
	l_sigset_t mask;

	FUNC0(mask);
	mask.__mask = args->mask;
	FUNC2(&mask, &sigmask);
	return (FUNC1(td, sigmask));
}