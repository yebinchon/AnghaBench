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
struct freebsd32_clock_settime_args {int /*<<< orphan*/  clock_id; int /*<<< orphan*/  tp; } ;
typedef  int /*<<< orphan*/  ats32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timespec32,struct timespec,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct timespec32*,int) ; 
 int FUNC2 (struct thread*,int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  tv_nsec ; 
 int /*<<< orphan*/  tv_sec ; 

int
FUNC3(struct thread *td,
			struct freebsd32_clock_settime_args *uap)
{
	struct timespec	ats;
	struct timespec32 ats32;
	int error;

	error = FUNC1(uap->tp, &ats32, sizeof(ats32));
	if (error)
		return (error);
	FUNC0(ats32, ats, tv_sec);
	FUNC0(ats32, ats, tv_nsec);

	return (FUNC2(td, uap->clock_id, &ats));
}