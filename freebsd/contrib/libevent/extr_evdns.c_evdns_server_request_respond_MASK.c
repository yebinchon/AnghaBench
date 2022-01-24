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
struct server_request {struct server_request* next_pending; struct server_request* prev_pending; scalar_t__ addrlen; int /*<<< orphan*/  addr; scalar_t__ response_len; int /*<<< orphan*/  response; struct evdns_server_port* port; } ;
struct evdns_server_request {int dummy; } ;
struct evdns_server_port {int choked; struct server_request* pending_replies; int /*<<< orphan*/  event; scalar_t__ closing; int /*<<< orphan*/  socket; int /*<<< orphan*/  event_base; } ;
typedef  int /*<<< orphan*/  ev_socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evdns_server_port*) ; 
 int /*<<< orphan*/  EVDNS_LOG_WARN ; 
 int /*<<< orphan*/  FUNC1 (struct evdns_server_port*) ; 
 scalar_t__ FUNC2 (int) ; 
 int EV_PERSIST ; 
 int EV_READ ; 
 int EV_WRITE ; 
 struct server_request* FUNC3 (struct evdns_server_request*) ; 
 int FUNC4 (struct server_request*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct evdns_server_port*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct evdns_server_port*) ; 
 int /*<<< orphan*/  server_port_ready_callback ; 
 scalar_t__ FUNC12 (struct server_request*) ; 

int
FUNC13(struct evdns_server_request *req_, int err)
{
	struct server_request *req = FUNC3(req_);
	struct evdns_server_port *port = req->port;
	int r = -1;

	FUNC0(port);
	if (!req->response) {
		if ((r = FUNC4(req, err))<0)
			goto done;
	}

	r = FUNC10(port->socket, req->response, (int)req->response_len, 0,
			   (struct sockaddr*) &req->addr, (ev_socklen_t)req->addrlen);
	if (r<0) {
		int sock_err = FUNC8(port->socket);
		if (FUNC2(sock_err))
			goto done;

		if (port->pending_replies) {
			req->prev_pending = port->pending_replies->prev_pending;
			req->next_pending = port->pending_replies;
			req->prev_pending->next_pending =
				req->next_pending->prev_pending = req;
		} else {
			req->prev_pending = req->next_pending = req;
			port->pending_replies = req;
			port->choked = 1;

			(void) FUNC7(&port->event);
			FUNC6(&port->event, port->event_base, port->socket, (port->closing?0:EV_READ) | EV_WRITE | EV_PERSIST, server_port_ready_callback, port);

			if (FUNC5(&port->event, NULL) < 0) {
				FUNC9(EVDNS_LOG_WARN, "Error from libevent when adding event for DNS server");
			}

		}

		r = 1;
		goto done;
	}
	if (FUNC12(req)) {
		r = 0;
		goto done;
	}

	if (port->pending_replies)
		FUNC11(port);

	r = 0;
done:
	FUNC1(port);
	return r;
}