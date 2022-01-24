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
struct uio {int dummy; } ;
struct thread {int dummy; } ;
struct cloudabi64_sys_fd_pwrite_args {int /*<<< orphan*/  offset; int /*<<< orphan*/  fd; int /*<<< orphan*/  iovs_len; int /*<<< orphan*/  iovs; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_IOV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uio**) ; 
 int /*<<< orphan*/  FUNC2 (struct uio*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct thread*,int /*<<< orphan*/ ,struct uio*,int /*<<< orphan*/ ) ; 

int
FUNC4(struct thread *td,
    struct cloudabi64_sys_fd_pwrite_args *uap)
{
	struct uio *uio;
	int error;

	error = FUNC1(FUNC0(uap->iovs), uap->iovs_len, &uio);
	if (error != 0)
		return (error);
	error = FUNC3(td, uap->fd, uio, uap->offset);
	FUNC2(uio, M_IOV);
	return (error);
}