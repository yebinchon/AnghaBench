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
struct stat {int dummy; } ;
struct linux_newfstat_args {int /*<<< orphan*/  buf; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int FUNC0 (struct thread*,int /*<<< orphan*/ ,struct stat*) ; 
 int FUNC1 (struct stat*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct thread*,int /*<<< orphan*/ ,struct stat*) ; 

int
FUNC3(struct thread *td, struct linux_newfstat_args *args)
{
	struct stat buf;
	int error;

	error = FUNC0(td, args->fd, &buf);
	FUNC2(td, args->fd, &buf);
	if (!error)
		error = FUNC1(&buf, args->buf);

	return (error);
}