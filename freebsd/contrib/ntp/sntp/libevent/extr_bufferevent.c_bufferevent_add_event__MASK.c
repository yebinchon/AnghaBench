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
struct timeval {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
struct event {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct event*,struct timeval const*) ; 

int
FUNC1(struct event *ev, const struct timeval *tv)
{
	if (tv->tv_sec == 0 && tv->tv_usec == 0)
		return FUNC0(ev, NULL);
	else
		return FUNC0(ev, tv);
}