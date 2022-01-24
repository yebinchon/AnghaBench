#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ read_limit; } ;
struct bufferevent_rate_limit_group {TYPE_1__ rate_limit; } ;
typedef  scalar_t__ ev_ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufferevent_rate_limit_group*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent_rate_limit_group*) ; 
 int /*<<< orphan*/  FUNC2 (struct bufferevent_rate_limit_group*) ; 
 int /*<<< orphan*/  FUNC3 (struct bufferevent_rate_limit_group*) ; 

int
FUNC4(
	struct bufferevent_rate_limit_group *grp, ev_ssize_t decr)
{
	int r = 0;
	ev_ssize_t old_limit, new_limit;
	FUNC0(grp);
	old_limit = grp->rate_limit.read_limit;
	new_limit = (grp->rate_limit.read_limit -= decr);

	if (old_limit > 0 && new_limit <= 0) {
		FUNC2(grp);
	} else if (old_limit <= 0 && new_limit > 0) {
		FUNC3(grp);
	}

	FUNC1(grp);
	return r;
}