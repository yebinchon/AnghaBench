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
struct thread {scalar_t__* td_retval; } ;
struct linux_getpriority_args {int /*<<< orphan*/  who; int /*<<< orphan*/  which; } ;
struct getpriority_args {int /*<<< orphan*/  who; int /*<<< orphan*/  which; } ;

/* Variables and functions */
 int FUNC0 (struct thread*,struct getpriority_args*) ; 

int
FUNC1(struct thread *td, struct linux_getpriority_args *args)
{
	struct getpriority_args bsd_args;
	int error;

	bsd_args.which = args->which;
	bsd_args.who = args->who;
	error = FUNC0(td, &bsd_args);
	td->td_retval[0] = 20 - td->td_retval[0];
	return (error);
}