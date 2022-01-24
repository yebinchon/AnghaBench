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
struct event_iocp_port {int dummy; } ;
struct event_base {int dummy; } ;
struct bufferevent {void* output; void* input; } ;
struct TYPE_2__ {struct bufferevent bev; } ;
struct bufferevent_async {int ok; TYPE_1__ bev; int /*<<< orphan*/  write_overlapped; int /*<<< orphan*/  read_overlapped; int /*<<< orphan*/  connect_overlapped; } ;
typedef  int /*<<< orphan*/  evutil_socket_t ;

/* Variables and functions */
 int BEV_OPT_THREADSAFE ; 
 int ERROR_INVALID_PARAMETER ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  be_async_inbuf_callback ; 
 int /*<<< orphan*/  be_async_outbuf_callback ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,struct event_base*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bufferevent*) ; 
 int /*<<< orphan*/  bufferevent_ops_async ; 
 int /*<<< orphan*/  connect_complete ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 struct event_iocp_port* FUNC7 (struct event_base*) ; 
 scalar_t__ FUNC8 (struct event_iocp_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct bufferevent_async* FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct bufferevent_async*) ; 
 int /*<<< orphan*/  read_complete ; 
 int /*<<< orphan*/  write_complete ; 

struct bufferevent *
FUNC12(struct event_base *base,
    evutil_socket_t fd, int options)
{
	struct bufferevent_async *bev_a;
	struct bufferevent *bev;
	struct event_iocp_port *iocp;

	options |= BEV_OPT_THREADSAFE;

	if (!(iocp = FUNC7(base)))
		return NULL;

	if (fd >= 0 && FUNC8(iocp, fd, 1)<0) {
		int err = FUNC0();
		/* We may have alrady associated this fd with a port.
		 * Let's hope it's this port, and that the error code
		 * for doing this neer changes. */
		if (err != ERROR_INVALID_PARAMETER)
			return NULL;
	}

	if (!(bev_a = FUNC10(1, sizeof(struct bufferevent_async))))
		return NULL;

	bev = &bev_a->bev.bev;
	if (!(bev->input = FUNC6(fd))) {
		FUNC11(bev_a);
		return NULL;
	}
	if (!(bev->output = FUNC6(fd))) {
		FUNC5(bev->input);
		FUNC11(bev_a);
		return NULL;
	}

	if (FUNC2(&bev_a->bev, base, &bufferevent_ops_async,
		options)<0)
		goto err;

	FUNC4(bev->input, be_async_inbuf_callback, bev);
	FUNC4(bev->output, be_async_outbuf_callback, bev);

	FUNC9(&bev_a->connect_overlapped, connect_complete);
	FUNC9(&bev_a->read_overlapped, read_complete);
	FUNC9(&bev_a->write_overlapped, write_complete);

	FUNC3(bev);

	bev_a->ok = fd >= 0;

	return bev;
err:
	FUNC1(&bev_a->bev.bev);
	return NULL;
}