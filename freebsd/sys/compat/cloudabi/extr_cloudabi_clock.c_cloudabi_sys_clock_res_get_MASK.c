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
struct timespec {int dummy; } ;
struct thread {int /*<<< orphan*/  td_retval; } ;
struct cloudabi_sys_clock_res_get_args {int /*<<< orphan*/  clock_id; } ;
typedef  int /*<<< orphan*/  cts ;
typedef  int /*<<< orphan*/  cloudabi_timestamp_t ;
typedef  int /*<<< orphan*/  clockid_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct timespec*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct thread*,int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

int
FUNC4(struct thread *td,
    struct cloudabi_sys_clock_res_get_args *uap)
{
	struct timespec ts;
	cloudabi_timestamp_t cts;
	int error;
	clockid_t clockid;

	error = FUNC0(uap->clock_id, &clockid);
	if (error != 0)
		return (error);
	error = FUNC2(td, clockid, &ts);
	if (error != 0)
		return (error);
	error = FUNC1(&ts, &cts);
	if (error != 0)
		return (error);
	FUNC3(td->td_retval, &cts, sizeof(cts));
	return (0);
}