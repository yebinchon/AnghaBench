#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ sigev_notify; } ;
struct aiocb {TYPE_1__ aio_sigevent; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  sigev_id_t ;

/* Variables and functions */
 scalar_t__ EINPROGRESS ; 
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ SIGEV_THREAD ; 
 int /*<<< orphan*/  SI_ASYNCIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (struct aiocb*) ; 
 int FUNC4 (struct aiocb*) ; 
 int /*<<< orphan*/  errno ; 

ssize_t
FUNC5(struct aiocb *iocb)
{

	if (iocb->aio_sigevent.sigev_notify == SIGEV_THREAD) {
		if (FUNC3(iocb) == EINPROGRESS) {
			/*
			 * Fail with EINVAL to match the semantics of
			 * __sys_aio_return() for an in-progress
			 * request.
			 */
			errno = EINVAL;
			return (-1);
		}
		FUNC1();
		FUNC0(SI_ASYNCIO, (sigev_id_t)iocb);
		FUNC2();
	}

	return FUNC4(iocb);
}