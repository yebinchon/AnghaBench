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
struct event_base {int dummy; } ;
struct evdns_server_port {int refcnt; int /*<<< orphan*/  lock; int /*<<< orphan*/  event; int /*<<< orphan*/  socket; struct event_base* event_base; int /*<<< orphan*/ * pending_replies; void* user_data; int /*<<< orphan*/  user_callback; scalar_t__ closing; scalar_t__ choked; } ;
typedef  int /*<<< orphan*/  evutil_socket_t ;
typedef  int /*<<< orphan*/  evdns_request_callback_fn_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EVTHREAD_LOCKTYPE_RECURSIVE ; 
 int EV_PERSIST ; 
 int EV_READ ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct event_base*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct evdns_server_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct evdns_server_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct evdns_server_port*) ; 
 struct evdns_server_port* FUNC5 (int) ; 
 int /*<<< orphan*/  server_port_ready_callback ; 

struct evdns_server_port *
FUNC6(struct event_base *base, evutil_socket_t socket, int flags, evdns_request_callback_fn_type cb, void *user_data)
{
	struct evdns_server_port *port;
	if (flags)
		return NULL; /* flags not yet implemented */
	if (!(port = FUNC5(sizeof(struct evdns_server_port))))
		return NULL;
	FUNC3(port, 0, sizeof(struct evdns_server_port));


	port->socket = socket;
	port->refcnt = 1;
	port->choked = 0;
	port->closing = 0;
	port->user_callback = cb;
	port->user_data = user_data;
	port->pending_replies = NULL;
	port->event_base = base;

	FUNC2(&port->event, port->event_base,
				 port->socket, EV_READ | EV_PERSIST,
				 server_port_ready_callback, port);
	if (FUNC1(&port->event, NULL) < 0) {
		FUNC4(port);
		return NULL;
	}
	FUNC0(port->lock, EVTHREAD_LOCKTYPE_RECURSIVE);
	return port;
}