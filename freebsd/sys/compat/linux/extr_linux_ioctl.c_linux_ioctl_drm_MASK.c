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
struct linux_ioctl_args {int /*<<< orphan*/  cmd; } ;
struct ioctl_args {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct thread*,struct ioctl_args*) ; 

__attribute__((used)) static int
FUNC2(struct thread *td, struct linux_ioctl_args *args)
{
	args->cmd = FUNC0(args->cmd);
	return (FUNC1(td, (struct ioctl_args *)args));
}