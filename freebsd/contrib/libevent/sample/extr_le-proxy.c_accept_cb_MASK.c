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
struct evconnlistener {int dummy; } ;
struct bufferevent {int dummy; } ;
typedef  int evutil_socket_t ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int BEV_OPT_CLOSE_ON_FREE ; 
 int BEV_OPT_DEFER_CALLBACKS ; 
 int /*<<< orphan*/  BUFFEREVENT_SSL_CONNECTING ; 
 int EV_READ ; 
 int EV_WRITE ; 
 int /*<<< orphan*/ * FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  base ; 
 int /*<<< orphan*/  FUNC2 (struct bufferevent*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bufferevent*) ; 
 struct bufferevent* FUNC4 (int /*<<< orphan*/ ,struct bufferevent*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct bufferevent* FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bufferevent*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct bufferevent*) ; 
 scalar_t__ FUNC7 (struct bufferevent*,struct sockaddr*,int /*<<< orphan*/ ) ; 
 struct bufferevent* FUNC8 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  connect_to_addr ; 
 int /*<<< orphan*/  connect_to_addrlen ; 
 int /*<<< orphan*/  eventcb ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  readcb ; 
 scalar_t__ ssl_ctx ; 
 scalar_t__ use_wrapper ; 

__attribute__((used)) static void
FUNC10(struct evconnlistener *listener, evutil_socket_t fd,
    struct sockaddr *a, int slen, void *p)
{
	struct bufferevent *b_out, *b_in;
	/* Create two linked bufferevent objects: one to connect, one for the
	 * new connection */
	b_in = FUNC8(base, fd,
	    BEV_OPT_CLOSE_ON_FREE|BEV_OPT_DEFER_CALLBACKS);

	if (!ssl_ctx || use_wrapper)
		b_out = FUNC8(base, -1,
		    BEV_OPT_CLOSE_ON_FREE|BEV_OPT_DEFER_CALLBACKS);
	else {
		SSL *ssl = FUNC0(ssl_ctx);
		b_out = FUNC5(base, -1, ssl,
		    BUFFEREVENT_SSL_CONNECTING,
		    BEV_OPT_CLOSE_ON_FREE|BEV_OPT_DEFER_CALLBACKS);
	}

	FUNC1(b_in && b_out);

	if (FUNC7(b_out,
		(struct sockaddr*)&connect_to_addr, connect_to_addrlen)<0) {
		FUNC9("bufferevent_socket_connect");
		FUNC3(b_out);
		FUNC3(b_in);
		return;
	}

	if (ssl_ctx && use_wrapper) {
		struct bufferevent *b_ssl;
		SSL *ssl = FUNC0(ssl_ctx);
		b_ssl = FUNC4(base,
		    b_out, ssl, BUFFEREVENT_SSL_CONNECTING,
		    BEV_OPT_CLOSE_ON_FREE|BEV_OPT_DEFER_CALLBACKS);
		if (!b_ssl) {
			FUNC9("Bufferevent_openssl_new");
			FUNC3(b_out);
			FUNC3(b_in);
		}
		b_out = b_ssl;
	}

	FUNC6(b_in, readcb, NULL, eventcb, b_out);
	FUNC6(b_out, readcb, NULL, eventcb, b_in);

	FUNC2(b_in, EV_READ|EV_WRITE);
	FUNC2(b_out, EV_READ|EV_WRITE);
}