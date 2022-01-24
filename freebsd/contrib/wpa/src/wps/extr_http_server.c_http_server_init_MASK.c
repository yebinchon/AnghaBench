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
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
struct in_addr {int /*<<< orphan*/  s_addr; } ;
struct http_server {void (* cb ) (void*,struct http_request*) ;scalar_t__ fd; int port; void* cb_ctx; } ;
typedef  int /*<<< orphan*/  sin ;
typedef  int /*<<< orphan*/  on ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 scalar_t__ EADDRINUSE ; 
 int /*<<< orphan*/  EVENT_TYPE_READ ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 scalar_t__ FUNC0 (scalar_t__,struct sockaddr*,int) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct http_server*,int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  http_server_cb ; 
 int /*<<< orphan*/  FUNC4 (struct http_server*) ; 
 int FUNC5 (struct in_addr) ; 
 scalar_t__ FUNC6 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 struct http_server* FUNC8 (int) ; 
 scalar_t__ FUNC9 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int,...) ; 

struct http_server * FUNC13(struct in_addr *addr, int port,
				      void (*cb)(void *ctx,
						 struct http_request *req),
				      void *cb_ctx)
{
	struct sockaddr_in sin;
	struct http_server *srv;
	int on = 1;

	srv = FUNC8(sizeof(*srv));
	if (srv == NULL)
		return NULL;
	srv->cb = cb;
	srv->cb_ctx = cb_ctx;

	srv->fd = FUNC10(AF_INET, SOCK_STREAM, 0);
	if (srv->fd < 0)
		goto fail;

	if (FUNC9(srv->fd, SOL_SOCKET, SO_REUSEADDR, &on, sizeof(on)) < 0)
	{
		FUNC12(MSG_DEBUG,
			   "HTTP: setsockopt(SO_REUSEADDR) failed: %s",
			   FUNC11(errno));
		/* try to continue anyway */
	}

	if (FUNC2(srv->fd, F_SETFL, O_NONBLOCK) < 0)
		goto fail;
	if (port < 0)
		srv->port = 49152;
	else
		srv->port = port;

	FUNC7(&sin, 0, sizeof(sin));
	sin.sin_family = AF_INET;
	sin.sin_addr.s_addr = addr->s_addr;

	for (;;) {
		sin.sin_port = FUNC3(srv->port);
		if (FUNC0(srv->fd, (struct sockaddr *) &sin, sizeof(sin)) == 0)
			break;
		if (errno == EADDRINUSE) {
			/* search for unused port */
			if (++srv->port == 65535 || port >= 0)
				goto fail;
			continue;
		}
		FUNC12(MSG_DEBUG, "HTTP: Failed to bind server port %d: "
			   "%s", srv->port, FUNC11(errno));
		goto fail;
	}
	if (FUNC6(srv->fd, 10 /* max backlog */) < 0 ||
	    FUNC2(srv->fd, F_SETFL, O_NONBLOCK) < 0 ||
	    FUNC1(srv->fd, EVENT_TYPE_READ, http_server_cb,
				srv, NULL))
		goto fail;

	FUNC12(MSG_DEBUG, "HTTP: Started server on %s:%d",
		   FUNC5(*addr), srv->port);

	return srv;

fail:
	FUNC4(srv);
	return NULL;
}