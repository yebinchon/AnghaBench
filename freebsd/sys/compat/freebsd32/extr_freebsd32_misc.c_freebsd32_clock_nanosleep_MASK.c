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
struct freebsd32_clock_nanosleep_args {int /*<<< orphan*/  rmtp; int /*<<< orphan*/  rqtp; int /*<<< orphan*/  flags; int /*<<< orphan*/  clock_id; } ;

/* Variables and functions */
 int FUNC0 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct thread*,int) ; 

int
FUNC2(struct thread *td,
    struct freebsd32_clock_nanosleep_args *uap)
{
	int error;

	error = FUNC0(td, uap->clock_id, uap->flags,
	    uap->rqtp, uap->rmtp);
	return (FUNC1(td, error));
}