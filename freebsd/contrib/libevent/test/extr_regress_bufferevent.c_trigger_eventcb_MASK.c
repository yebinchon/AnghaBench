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
struct bufferevent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct event_base*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bufferevent*,short,void*) ; 

__attribute__((used)) static void
FUNC3(struct bufferevent *bev, short what, void *ctx)
{
	struct event_base *base = ctx;
	if (what == ~0) {
		FUNC0(("Event successfully triggered."));
		FUNC1(base, NULL);
		return;
	}
	FUNC2(bev, what, ctx);
}