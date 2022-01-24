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
typedef  int /*<<< orphan*/  uint32_t ;
struct thread {int dummy; } ;
struct linux_mmap_args {int /*<<< orphan*/  ptr; } ;
struct l_mmap_argv {scalar_t__ pgoff; int /*<<< orphan*/  fd; int /*<<< orphan*/  flags; int /*<<< orphan*/  prot; int /*<<< orphan*/  len; int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  linux_args ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct l_mmap_argv*,int) ; 
 int FUNC1 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC2(struct thread *td, struct linux_mmap_args *args)
{
	int error;
	struct l_mmap_argv linux_args;

	error = FUNC0(args->ptr, &linux_args, sizeof(linux_args));
	if (error)
		return (error);

	return (FUNC1(td, linux_args.addr, linux_args.len,
	    linux_args.prot, linux_args.flags, linux_args.fd,
	    (uint32_t)linux_args.pgoff));
}