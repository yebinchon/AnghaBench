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
struct linux_timer_gettime_args {int /*<<< orphan*/  setting; int /*<<< orphan*/  timerid; } ;
struct l_itimerspec {int dummy; } ;
struct itimerspec {int dummy; } ;
typedef  int /*<<< orphan*/  l_val ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct itimerspec,struct l_itimerspec) ; 
 int FUNC1 (struct l_itimerspec*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct thread*,int /*<<< orphan*/ ,struct itimerspec*) ; 

int
FUNC3(struct thread *td, struct linux_timer_gettime_args *uap)
{
	struct l_itimerspec l_val;
	struct itimerspec val;
	int error;

	error = FUNC2(td, uap->timerid, &val);
	if (error == 0) {
		FUNC0(val, l_val);
		error = FUNC1(&l_val, uap->setting, sizeof(l_val));
	}
	return (error);
}