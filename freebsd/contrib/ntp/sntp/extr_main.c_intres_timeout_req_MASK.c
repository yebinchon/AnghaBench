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
typedef  scalar_t__ u_int ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EV_PERSIST ; 
 int EV_TIMEOUT ; 
 int /*<<< orphan*/  base ; 
 int /*<<< orphan*/ * ev_worker_timeout ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  worker_timeout ; 

void
FUNC4(
	u_int	seconds		/* 0 cancels */
	)
{
	struct timeval	tv_to;

	if (NULL == ev_worker_timeout) {
		ev_worker_timeout = FUNC3(base, -1,
					      EV_TIMEOUT | EV_PERSIST,
					      &worker_timeout, NULL);
		FUNC0(NULL != ev_worker_timeout);
	} else {
		FUNC2(ev_worker_timeout);
	}
	if (0 == seconds)
		return;
	tv_to.tv_sec = seconds;
	tv_to.tv_usec = 0;
	FUNC1(ev_worker_timeout, &tv_to);
}