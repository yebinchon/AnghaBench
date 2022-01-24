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
struct sockaddr {int dummy; } ;
struct server_request {scalar_t__ addrlen; int /*<<< orphan*/  addr; scalar_t__ response_len; int /*<<< orphan*/  response; } ;
struct evdns_server_port {int /*<<< orphan*/  event; int /*<<< orphan*/  socket; int /*<<< orphan*/  event_base; struct server_request* pending_replies; } ;
typedef  int /*<<< orphan*/  ev_socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evdns_server_port*) ; 
 int /*<<< orphan*/  EVDNS_LOG_WARN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int EV_PERSIST ; 
 int EV_READ ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct evdns_server_port*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  server_port_ready_callback ; 
 scalar_t__ FUNC10 (struct server_request*) ; 

__attribute__((used)) static void
FUNC11(struct evdns_server_port *port)
{
	struct server_request *req = port->pending_replies;
	FUNC0(port);
	while (req) {
		int r = FUNC9(port->socket, req->response, (int)req->response_len, 0,
			   (struct sockaddr*) &req->addr, (ev_socklen_t)req->addrlen);
		if (r < 0) {
			int err = FUNC7(port->socket);
			if (FUNC2(err))
				return;
			FUNC8(EVDNS_LOG_WARN, "Error %s (%d) while writing response to port; dropping", FUNC6(err), err);
		}
		if (FUNC10(req)) {
			/* we released the last reference to req->port. */
			return;
		} else {
			FUNC1(req != port->pending_replies);
			req = port->pending_replies;
		}
	}

	/* We have no more pending requests; stop listening for 'writeable' events. */
	(void) FUNC5(&port->event);
	FUNC4(&port->event, port->event_base,
				 port->socket, EV_READ | EV_PERSIST,
				 server_port_ready_callback, port);

	if (FUNC3(&port->event, NULL) < 0) {
		FUNC8(EVDNS_LOG_WARN, "Error from libevent when adding event for DNS server.");
		/* ???? Do more? */
	}
}