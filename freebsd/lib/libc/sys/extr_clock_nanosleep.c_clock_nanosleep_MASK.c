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
typedef  int /*<<< orphan*/  clockid_t ;

/* Variables and functions */
 size_t INTERPOS_clock_nanosleep ; 
 scalar_t__* __libc_interposing ; 
 int FUNC0 (int /*<<< orphan*/ ,int,struct timespec const*,struct timespec*) ; 

int
FUNC1(clockid_t clock_id, int flags, const struct timespec *rqtp,
    struct timespec *rmtp)
{

	return (((int (*)(clockid_t, int, const struct timespec *,
	    struct timespec *))
	    __libc_interposing[INTERPOS_clock_nanosleep])(clock_id, flags,
	    rqtp, rmtp));
}