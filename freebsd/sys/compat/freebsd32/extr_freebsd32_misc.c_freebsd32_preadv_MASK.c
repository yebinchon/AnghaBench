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
struct freebsd32_preadv_args {int /*<<< orphan*/  offset; int /*<<< orphan*/  fd; int /*<<< orphan*/  iovcnt; int /*<<< orphan*/  iovp; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_IOV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uio*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uio**) ; 
 int FUNC3 (struct thread*,int /*<<< orphan*/ ,struct uio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  off_t ; 

int
FUNC4(struct thread *td, struct freebsd32_preadv_args *uap)
{
	struct uio *auio;
	int error;

	error = FUNC2(uap->iovp, uap->iovcnt, &auio);
	if (error)
		return (error);
	error = FUNC3(td, uap->fd, auio, FUNC0(off_t,uap->offset));
	FUNC1(auio, M_IOV);
	return (error);
}