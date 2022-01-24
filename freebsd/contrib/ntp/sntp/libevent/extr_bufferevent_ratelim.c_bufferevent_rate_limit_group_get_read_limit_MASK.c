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
struct TYPE_2__ {int /*<<< orphan*/  read_limit; } ;
struct bufferevent_rate_limit_group {TYPE_1__ rate_limit; } ;
typedef  int /*<<< orphan*/  ev_ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufferevent_rate_limit_group*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent_rate_limit_group*) ; 

ev_ssize_t
FUNC2(
	struct bufferevent_rate_limit_group *grp)
{
	ev_ssize_t r;
	FUNC0(grp);
	r = grp->rate_limit.read_limit;
	FUNC1(grp);
	return r;
}