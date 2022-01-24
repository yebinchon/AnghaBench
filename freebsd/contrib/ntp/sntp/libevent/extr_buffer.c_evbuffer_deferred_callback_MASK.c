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
struct evbuffer {struct bufferevent* parent; } ;
struct bufferevent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC2 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct evbuffer*,int) ; 

__attribute__((used)) static void
FUNC4(struct event_callback *cb, void *arg)
{
	struct bufferevent *parent = NULL;
	struct evbuffer *buffer = arg;

	/* XXXX It would be better to run these callbacks without holding the
	 * lock */
	FUNC0(buffer);
	parent = buffer->parent;
	FUNC3(buffer, 1);
	FUNC2(buffer);
	if (parent)
		FUNC1(parent);
}