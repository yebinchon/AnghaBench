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
union bufferevent_ctrl_data {int /*<<< orphan*/  fd; } ;
struct bufferevent {int /*<<< orphan*/  ev_read; } ;
typedef  enum bufferevent_ctrl_op { ____Placeholder_bufferevent_ctrl_op } bufferevent_ctrl_op ;

/* Variables and functions */
#define  BEV_CTRL_CANCEL_ALL 131 
#define  BEV_CTRL_GET_FD 130 
#define  BEV_CTRL_GET_UNDERLYING 129 
#define  BEV_CTRL_SET_FD 128 
 int /*<<< orphan*/  FUNC0 (struct bufferevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(struct bufferevent *bev, enum bufferevent_ctrl_op op,
    union bufferevent_ctrl_data *data)
{
	switch (op) {
	case BEV_CTRL_SET_FD:
		FUNC0(bev, data->fd);
		return 0;
	case BEV_CTRL_GET_FD:
		data->fd = FUNC1(&bev->ev_read);
		return 0;
	case BEV_CTRL_GET_UNDERLYING:
	case BEV_CTRL_CANCEL_ALL:
	default:
		return -1;
	}
}