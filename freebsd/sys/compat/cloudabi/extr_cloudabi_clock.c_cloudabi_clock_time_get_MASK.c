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
struct thread {int dummy; } ;
typedef  int /*<<< orphan*/  cloudabi_timestamp_t ;
typedef  int /*<<< orphan*/  cloudabi_clockid_t ;
typedef  int /*<<< orphan*/  clockid_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct timespec*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct thread*,int /*<<< orphan*/ ,struct timespec*) ; 

int
FUNC3(struct thread *td, cloudabi_clockid_t clock_id,
    cloudabi_timestamp_t *ret)
{
	struct timespec ts;
	int error;
	clockid_t clockid;

	error = FUNC0(clock_id, &clockid);
	if (error != 0)
		return (error);
	error = FUNC2(td, clockid, &ts);
	if (error != 0)
		return (error);
	return (FUNC1(&ts, ret));
}