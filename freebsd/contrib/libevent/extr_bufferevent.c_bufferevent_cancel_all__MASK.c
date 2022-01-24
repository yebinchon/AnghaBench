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
typedef  union bufferevent_ctrl_data {int dummy; } bufferevent_ctrl_data ;
struct bufferevent {TYPE_1__* be_ops; } ;
typedef  int /*<<< orphan*/  d ;
struct TYPE_2__ {int /*<<< orphan*/  (* ctrl ) (struct bufferevent*,int /*<<< orphan*/ ,union bufferevent_ctrl_data*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BEV_CTRL_CANCEL_ALL ; 
 int /*<<< orphan*/  FUNC0 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC2 (union bufferevent_ctrl_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bufferevent*,int /*<<< orphan*/ ,union bufferevent_ctrl_data*) ; 

__attribute__((used)) static void
FUNC4(struct bufferevent *bev)
{
	union bufferevent_ctrl_data d;
	FUNC2(&d, 0, sizeof(d));
	FUNC0(bev);
	if (bev->be_ops->ctrl)
		bev->be_ops->ctrl(bev, BEV_CTRL_CANCEL_ALL, &d);
	FUNC1(bev);
}