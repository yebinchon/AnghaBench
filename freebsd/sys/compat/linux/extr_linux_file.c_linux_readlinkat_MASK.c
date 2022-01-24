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
struct linux_readlinkat_args {int dfd; int /*<<< orphan*/  bufsiz; int /*<<< orphan*/  buf; int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int AT_FDCWD ; 
 int /*<<< orphan*/  FUNC0 (struct thread*,int /*<<< orphan*/ ,char**,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int LINUX_AT_FDCWD ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int /*<<< orphan*/  UIO_USERSPACE ; 
 int FUNC2 (struct thread*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC3(struct thread *td, struct linux_readlinkat_args *args)
{
	char *name;
	int error, dfd;

	dfd = (args->dfd == LINUX_AT_FDCWD) ? AT_FDCWD : args->dfd;
	FUNC0(td, args->path, &name, dfd);

	error = FUNC2(td, dfd, name, UIO_SYSSPACE, args->buf,
	    UIO_USERSPACE, args->bufsiz);
	FUNC1(name);
	return (error);
}