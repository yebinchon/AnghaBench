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
struct evbuffer {int deferred_cbs; int /*<<< orphan*/  deferred; struct event_base* cb_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer*) ; 
 int /*<<< orphan*/  evbuffer_deferred_callback ; 
 int FUNC2 (struct event_base*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct evbuffer*) ; 

int
FUNC4(struct evbuffer *buffer, struct event_base *base)
{
	FUNC0(buffer);
	buffer->cb_queue = base;
	buffer->deferred_cbs = 1;
	FUNC3(&buffer->deferred,
	    FUNC2(base) / 2,
	    evbuffer_deferred_callback, buffer);
	FUNC1(buffer);
	return 0;
}