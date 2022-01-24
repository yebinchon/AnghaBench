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
struct timerfd {scalar_t__ tfd_clockid; } ;

/* Variables and functions */
 scalar_t__ CLOCK_REALTIME ; 
 int /*<<< orphan*/  FUNC0 (struct timespec*) ; 
 int /*<<< orphan*/  FUNC1 (struct timespec*) ; 

__attribute__((used)) static void
FUNC2(struct timerfd *tfd, struct timespec *ts)
{

	if (tfd->tfd_clockid == CLOCK_REALTIME)
		FUNC0(ts);
	else	/* CLOCK_MONOTONIC */
		FUNC1(ts);
}