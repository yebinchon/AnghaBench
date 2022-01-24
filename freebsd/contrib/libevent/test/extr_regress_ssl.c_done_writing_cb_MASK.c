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
struct evbuffer {int dummy; } ;
struct bufferevent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_READ ; 
 int /*<<< orphan*/  EV_WRITE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bufferevent*,int /*<<< orphan*/ ) ; 
 struct evbuffer* FUNC3 (struct bufferevent*) ; 
 scalar_t__ FUNC4 (struct evbuffer*) ; 

__attribute__((used)) static void
FUNC5(struct bufferevent *bev, void *ctx)
{
	struct evbuffer *b = FUNC3(bev);
	if (FUNC4(b))
		return;
	FUNC0(("Done writing."));
	FUNC1(bev, EV_WRITE);
	FUNC2(bev, EV_READ);
}