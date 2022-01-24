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
struct linux_truncate_args {int /*<<< orphan*/  length; int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct thread*,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int FUNC2 (struct thread*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC3(struct thread *td, struct linux_truncate_args *args)
{
	char *path;
	int error;

	FUNC0(td, args->path, &path);

	error = FUNC2(td, path, UIO_SYSSPACE, args->length);
	FUNC1(path);
	return (error);
}