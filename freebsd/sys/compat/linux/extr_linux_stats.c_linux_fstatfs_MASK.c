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
struct statfs {int dummy; } ;
struct linux_fstatfs_args {int /*<<< orphan*/  buf; int /*<<< orphan*/  fd; } ;
struct l_statfs {int dummy; } ;
typedef  int /*<<< orphan*/  linux_statfs ;

/* Variables and functions */
 int /*<<< orphan*/  M_STATFS ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int FUNC0 (struct statfs*,struct l_statfs*) ; 
 int FUNC1 (struct l_statfs*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct statfs*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct thread*,int /*<<< orphan*/ ,struct statfs*) ; 
 struct statfs* FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC5(struct thread *td, struct linux_fstatfs_args *args)
{
	struct l_statfs linux_statfs;
	struct statfs *bsd_statfs;
	int error;

	bsd_statfs = FUNC4(sizeof(struct statfs), M_STATFS, M_WAITOK);
	error = FUNC3(td, args->fd, bsd_statfs);
	if (error == 0)
		error = FUNC0(bsd_statfs, &linux_statfs);
	FUNC2(bsd_statfs, M_STATFS);
	if (error != 0)
		return (error);
	return (FUNC1(&linux_statfs, args->buf, sizeof(linux_statfs)));
}