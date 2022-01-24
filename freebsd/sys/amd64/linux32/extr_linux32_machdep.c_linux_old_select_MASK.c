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
struct thread {int dummy; } ;
struct linux_select_args {void* timeout; void* exceptfds; void* writefds; void* readfds; int /*<<< orphan*/  nfds; } ;
struct linux_old_select_args {int /*<<< orphan*/  ptr; } ;
struct l_old_select_argv {int /*<<< orphan*/  timeout; int /*<<< orphan*/  exceptfds; int /*<<< orphan*/  writefds; int /*<<< orphan*/  readfds; int /*<<< orphan*/  nfds; } ;
typedef  int /*<<< orphan*/  linux_args ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct l_old_select_argv*,int) ; 
 int FUNC2 (struct thread*,struct linux_select_args*) ; 

int
FUNC3(struct thread *td, struct linux_old_select_args *args)
{
	struct l_old_select_argv linux_args;
	struct linux_select_args newsel;
	int error;

	error = FUNC1(args->ptr, &linux_args, sizeof(linux_args));
	if (error)
		return (error);

	newsel.nfds = linux_args.nfds;
	newsel.readfds = FUNC0(linux_args.readfds);
	newsel.writefds = FUNC0(linux_args.writefds);
	newsel.exceptfds = FUNC0(linux_args.exceptfds);
	newsel.timeout = FUNC0(linux_args.timeout);
	return (FUNC2(td, &newsel));
}