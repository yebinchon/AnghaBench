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
struct event {int dummy; } ;
typedef  int /*<<< orphan*/  evutil_socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct event_base*) ; 
 struct event* FUNC1 (struct event_base*) ; 
 int /*<<< orphan*/  FUNC2 (struct event_base*,int /*<<< orphan*/ *) ; 
 struct event_base* FUNC3 (struct event*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5(evutil_socket_t fd, short event, void *arg)
{
	struct event *ev = arg;
	struct event_base *base = FUNC3(ev);
	FUNC0(base);
	FUNC2(base, NULL);
	FUNC4(ev == FUNC1(base));
}