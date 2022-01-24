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
struct timeval {double tv_sec; double tv_usec; } ;
struct event {int dummy; } ;
typedef  int /*<<< orphan*/  evutil_socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct event*,struct timeval*) ; 
 int /*<<< orphan*/  event_is_persistent ; 
 int /*<<< orphan*/  FUNC1 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC3 (struct timeval*,struct timeval*,struct timeval*) ; 
 struct timeval lasttime ; 
 int /*<<< orphan*/  FUNC4 (char*,int,double) ; 

__attribute__((used)) static void
FUNC5(evutil_socket_t fd, short event, void *arg)
{
	struct timeval newtime, difference;
	struct event *timeout = arg;
	double elapsed;

	FUNC1(&newtime, NULL);
	FUNC3(&newtime, &lasttime, &difference);
	elapsed = difference.tv_sec +
	    (difference.tv_usec / 1.0e6);

	FUNC4("timeout_cb called at %d: %.3f seconds elapsed.\n",
	    (int)newtime.tv_sec, elapsed);
	lasttime = newtime;

	if (! event_is_persistent) {
		struct timeval tv;
		FUNC2(&tv);
		tv.tv_sec = 2;
		FUNC0(timeout, &tv);
	}
}