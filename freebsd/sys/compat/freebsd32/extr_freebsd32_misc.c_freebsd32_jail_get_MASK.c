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
struct uio {int /*<<< orphan*/ * uio_iov; } ;
struct thread {int dummy; } ;
struct iovec32 {int dummy; } ;
struct freebsd32_jail_get_args {int iovcnt; scalar_t__ iovp; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  iov32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct iovec32,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  M_IOV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct iovec32,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct iovec32*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct uio*,int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__,int,struct uio**) ; 
 int /*<<< orphan*/  iov_base ; 
 int /*<<< orphan*/  iov_len ; 
 int FUNC5 (struct thread*,struct uio*,int /*<<< orphan*/ ) ; 

int
FUNC6(struct thread *td, struct freebsd32_jail_get_args *uap)
{
	struct iovec32 iov32;
	struct uio *auio;
	int error, i;

	/* Check that we have an even number of iovecs. */
	if (uap->iovcnt & 1)
		return (EINVAL);

	error = FUNC4(uap->iovp, uap->iovcnt, &auio);
	if (error)
		return (error);
	error = FUNC5(td, auio, uap->flags);
	if (error == 0)
		for (i = 0; i < uap->iovcnt; i++) {
			FUNC1(auio->uio_iov[i], iov32, iov_base);
			FUNC0(auio->uio_iov[i], iov32, iov_len);
			error = FUNC2(&iov32, uap->iovp + i, sizeof(iov32));
			if (error != 0)
				break;
		}
	FUNC3(auio, M_IOV);
	return (error);
}