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
struct timespec32 {int dummy; } ;
struct timespec {int dummy; } ;
struct thread {int dummy; } ;
struct freebsd32_clock_gettime_args {int /*<<< orphan*/  tp; int /*<<< orphan*/  clock_id; } ;
typedef  int /*<<< orphan*/  ats32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timespec,struct timespec32,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct timespec32*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct thread*,int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  tv_nsec ; 
 int /*<<< orphan*/  tv_sec ; 

int
FUNC3(struct thread *td,
			struct freebsd32_clock_gettime_args *uap)
{
	struct timespec	ats;
	struct timespec32 ats32;
	int error;

	error = FUNC2(td, uap->clock_id, &ats);
	if (error == 0) {
		FUNC0(ats, ats32, tv_sec);
		FUNC0(ats, ats32, tv_nsec);
		error = FUNC1(&ats32, uap->tp, sizeof(ats32));
	}
	return (error);
}