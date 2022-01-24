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
struct event_callback {int dummy; } ;
struct evbuffer {struct event_callback deferred; scalar_t__ deferred_cbs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer*) ; 

int
FUNC2(struct evbuffer *buffer, struct event_callback **cbs,
    int max_cbs)
{
	int r = 0;
	FUNC0(buffer);
	if (buffer->deferred_cbs) {
		if (max_cbs < 1) {
			r = -1;
			goto done;
		}
		cbs[0] = &buffer->deferred;
		r = 1;
	}
done:
	FUNC1(buffer);
	return r;
}