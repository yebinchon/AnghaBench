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
struct timeval {int tv_sec; } ;
struct event {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct event*,struct timeval*) ; 
 int /*<<< orphan*/  FUNC1 (struct timeval*) ; 

__attribute__((used)) static int
FUNC2(struct event *ev, int timeout)
{
	struct timeval tv, *ptv = NULL;

	if (timeout) {
		FUNC1(&tv);
		tv.tv_sec = timeout;
		ptv = &tv;
	}

	return (FUNC0(ev, ptv));
}