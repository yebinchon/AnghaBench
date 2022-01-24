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
typedef  int /*<<< orphan*/  ts32 ;
struct timespec32 {int dummy; } ;
struct timespec {int dummy; } ;
struct thread {int dummy; } ;
struct freebsd32_futimens_args {int /*<<< orphan*/  fd; int /*<<< orphan*/ * times; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timespec32,struct timespec,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int FUNC1 (int /*<<< orphan*/ *,struct timespec32*,int) ; 
 int FUNC2 (struct thread*,int /*<<< orphan*/ ,struct timespec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tv_nsec ; 
 int /*<<< orphan*/  tv_sec ; 

int
FUNC3(struct thread *td, struct freebsd32_futimens_args *uap)
{
	struct timespec32 ts32[2];
	struct timespec ts[2], *tsp;
	int error;

	if (uap->times != NULL) {
		error = FUNC1(uap->times, ts32, sizeof(ts32));
		if (error)
			return (error);
		FUNC0(ts32[0], ts[0], tv_sec);
		FUNC0(ts32[0], ts[0], tv_nsec);
		FUNC0(ts32[1], ts[1], tv_sec);
		FUNC0(ts32[1], ts[1], tv_nsec);
		tsp = ts;
	} else
		tsp = NULL;
	return (FUNC2(td, uap->fd, tsp, UIO_SYSSPACE));
}