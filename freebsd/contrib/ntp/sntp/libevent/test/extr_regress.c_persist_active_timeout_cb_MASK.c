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
struct persist_active_timeout_called {int n; short* events; int /*<<< orphan*/ * tvs; } ;
typedef  int /*<<< orphan*/  evutil_socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(evutil_socket_t fd, short event, void *arg)
{
	struct persist_active_timeout_called *c = arg;
	if (c->n < 15) {
		c->events[c->n] = event;
		FUNC0(&c->tvs[c->n], NULL);
		++c->n;
	}
}