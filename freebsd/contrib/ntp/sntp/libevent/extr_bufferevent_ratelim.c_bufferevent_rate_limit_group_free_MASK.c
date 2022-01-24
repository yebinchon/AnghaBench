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
struct bufferevent_rate_limit_group {scalar_t__ n_members; int /*<<< orphan*/  lock; int /*<<< orphan*/  master_refill_event; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EVTHREAD_LOCKTYPE_RECURSIVE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct bufferevent_rate_limit_group*) ; 
 int /*<<< orphan*/  FUNC3 (struct bufferevent_rate_limit_group*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct bufferevent_rate_limit_group*) ; 

void
FUNC6(struct bufferevent_rate_limit_group *g)
{
	FUNC2(g);
	FUNC1(0 == g->n_members);
	FUNC4(&g->master_refill_event);
	FUNC3(g);
	FUNC0(g->lock, EVTHREAD_LOCKTYPE_RECURSIVE);
	FUNC5(g);
}