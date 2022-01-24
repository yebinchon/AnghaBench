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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct bufferevent*) ; 
 int /*<<< orphan*/  n_events_invoked ; 

__attribute__((used)) static void
FUNC2(struct bufferevent *bev, short what, void *ctx)
{
	FUNC0(("Read eventcb simple invoked on %d.",
		(int)FUNC1(bev)));
	n_events_invoked++;
}