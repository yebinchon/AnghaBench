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
struct event_base {int dummy; } ;
typedef  int /*<<< orphan*/  evutil_socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct event_base*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct event_base*,int /*<<< orphan*/ ) ; 
 short EV_CLOSED ; 
 short EV_READ ; 
 short EV_WRITE ; 
 int /*<<< orphan*/  FUNC2 (struct event_base*,int /*<<< orphan*/ ,short) ; 
 int /*<<< orphan*/  th_base_lock ; 

void
FUNC3(struct event_base *base, evutil_socket_t fd, short events)
{
	FUNC0(base, th_base_lock);
	FUNC2(base, fd, events & (EV_READ|EV_WRITE|EV_CLOSED));
	FUNC1(base, th_base_lock);
}