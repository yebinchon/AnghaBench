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
struct bufferevent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_READ ; 
 int /*<<< orphan*/  EV_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct bufferevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC2 (struct bufferevent*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  eventcb ; 
 int /*<<< orphan*/  readcb ; 

__attribute__((used)) static void
FUNC3(struct bufferevent *bev, void *ctx)
{
	struct bufferevent *partner = ctx;

	/* We were choking the other side until we drained our outbuf a bit.
	 * Now it seems drained. */
	FUNC1(bev, readcb, NULL, eventcb, partner);
	FUNC2(bev, EV_WRITE, 0, 0);
	if (partner)
		FUNC0(partner, EV_READ);
}