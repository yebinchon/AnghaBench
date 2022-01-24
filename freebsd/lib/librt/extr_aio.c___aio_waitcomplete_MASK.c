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
struct timespec {int dummy; } ;
struct TYPE_2__ {scalar_t__ sigev_notify; } ;
struct aiocb {TYPE_1__ aio_sigevent; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  sigev_id_t ;

/* Variables and functions */
 scalar_t__ SIGEV_THREAD ; 
 int /*<<< orphan*/  SI_ASYNCIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct aiocb**,struct timespec*) ; 
 int errno ; 

ssize_t
FUNC4(struct aiocb **iocbp, struct timespec *timeout)
{
	ssize_t ret;
	int err;

	ret = FUNC3(iocbp, timeout);
	if (*iocbp) {
		if ((*iocbp)->aio_sigevent.sigev_notify == SIGEV_THREAD) {
			err = errno;
			FUNC1();
			FUNC0(SI_ASYNCIO, (sigev_id_t)(*iocbp));
			FUNC2();
			errno = err;
		}
	}

	return (ret);
}