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
typedef  int /*<<< orphan*/  val32 ;
struct thread {int dummy; } ;
struct itimerspec32 {int dummy; } ;
struct itimerspec {int dummy; } ;
struct freebsd32_ktimer_gettime_args {int /*<<< orphan*/  value; int /*<<< orphan*/  timerid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct itimerspec,struct itimerspec32) ; 
 int FUNC1 (struct itimerspec32*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct thread*,int /*<<< orphan*/ ,struct itimerspec*) ; 

int
FUNC3(struct thread *td,
    struct freebsd32_ktimer_gettime_args *uap)
{
	struct itimerspec32 val32;
	struct itimerspec val;
	int error;

	error = FUNC2(td, uap->timerid, &val);
	if (error == 0) {
		FUNC0(val, val32);
		error = FUNC1(&val32, uap->value, sizeof(val32));
	}
	return (error);
}