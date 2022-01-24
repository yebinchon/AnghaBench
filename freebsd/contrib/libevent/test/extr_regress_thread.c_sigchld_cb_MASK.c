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
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct event_base {int dummy; } ;
typedef  int /*<<< orphan*/  evutil_socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct event_base*,struct timeval*) ; 
 int /*<<< orphan*/  got_sigchld ; 

__attribute__((used)) static void
FUNC1(evutil_socket_t fd, short event, void *arg)
{
	struct timeval tv;
	struct event_base *base = arg;

	got_sigchld++;
	tv.tv_usec = 100000;
	tv.tv_sec = 0;
	FUNC0(base, &tv);
}