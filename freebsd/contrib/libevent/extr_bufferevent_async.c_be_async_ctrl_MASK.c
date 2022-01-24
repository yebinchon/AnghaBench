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
union bufferevent_ctrl_data {void* fd; } ;
struct event_iocp_port {int dummy; } ;
struct TYPE_2__ {int options; } ;
struct bufferevent_async {int /*<<< orphan*/  ok; TYPE_1__ bev; } ;
struct bufferevent {int /*<<< orphan*/  input; int /*<<< orphan*/  output; int /*<<< orphan*/  ev_base; } ;
typedef  void* evutil_socket_t ;
typedef  enum bufferevent_ctrl_op { ____Placeholder_bufferevent_ctrl_op } bufferevent_ctrl_op ;

/* Variables and functions */
#define  BEV_CTRL_CANCEL_ALL 131 
#define  BEV_CTRL_GET_FD 130 
#define  BEV_CTRL_GET_UNDERLYING 129 
#define  BEV_CTRL_SET_FD 128 
 int BEV_OPT_CLOSE_ON_FREE ; 
 void* INVALID_SOCKET ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*) ; 
 struct event_iocp_port* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct event_iocp_port*,void*,int) ; 
 struct bufferevent_async* FUNC5 (struct bufferevent*) ; 

__attribute__((used)) static int
FUNC6(struct bufferevent *bev, enum bufferevent_ctrl_op op,
    union bufferevent_ctrl_data *data)
{
	switch (op) {
	case BEV_CTRL_GET_FD:
		data->fd = FUNC1(bev->input);
		return 0;
	case BEV_CTRL_SET_FD: {
		struct event_iocp_port *iocp;

		if (data->fd == FUNC1(bev->input))
			return 0;
		if (!(iocp = FUNC3(bev->ev_base)))
			return -1;
		if (FUNC4(iocp, data->fd, 1) < 0)
			return -1;
		FUNC2(bev->input, data->fd);
		FUNC2(bev->output, data->fd);
		return 0;
	}
	case BEV_CTRL_CANCEL_ALL: {
		struct bufferevent_async *bev_a = FUNC5(bev);
		evutil_socket_t fd = FUNC1(bev->input);
		if (fd != (evutil_socket_t)INVALID_SOCKET &&
		    (bev_a->bev.options & BEV_OPT_CLOSE_ON_FREE)) {
			FUNC0(fd);
			FUNC2(bev->input, INVALID_SOCKET);
		}
		bev_a->ok = 0;
		return 0;
	}
	case BEV_CTRL_GET_UNDERLYING:
	default:
		return -1;
	}
}