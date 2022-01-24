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
struct freebsd32_jail_set_args {int iovcnt; int /*<<< orphan*/  flags; int /*<<< orphan*/  iovp; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  M_IOV ; 
 int /*<<< orphan*/  FUNC0 (struct uio*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,struct uio**) ; 
 int FUNC2 (struct thread*,struct uio*,int /*<<< orphan*/ ) ; 

int
FUNC3(struct thread *td, struct freebsd32_jail_set_args *uap)
{
	struct uio *auio;
	int error;

	/* Check that we have an even number of iovecs. */
	if (uap->iovcnt & 1)
		return (EINVAL);

	error = FUNC1(uap->iovp, uap->iovcnt, &auio);
	if (error)
		return (error);
	error = FUNC2(td, auio, uap->flags);
	FUNC0(auio, M_IOV);
	return (error);
}