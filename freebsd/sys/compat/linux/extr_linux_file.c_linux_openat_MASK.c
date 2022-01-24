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
struct linux_openat_args {int dfd; int flags; int /*<<< orphan*/  mode; int /*<<< orphan*/  filename; } ;

/* Variables and functions */
 int AT_FDCWD ; 
 int /*<<< orphan*/  FUNC0 (struct thread*,int /*<<< orphan*/ ,char**,int,int) ; 
 int LINUX_AT_FDCWD ; 
 int LINUX_O_CREAT ; 
 int FUNC1 (struct thread*,int,char*,int,int /*<<< orphan*/ ) ; 

int
FUNC2(struct thread *td, struct linux_openat_args *args)
{
	char *path;
	int dfd;

	dfd = (args->dfd == LINUX_AT_FDCWD) ? AT_FDCWD : args->dfd;
	if (args->flags & LINUX_O_CREAT)
		FUNC0(td, args->filename, &path, 1, dfd);
	else
		FUNC0(td, args->filename, &path, 0, dfd);

	return (FUNC1(td, dfd, path, args->flags, args->mode));
}