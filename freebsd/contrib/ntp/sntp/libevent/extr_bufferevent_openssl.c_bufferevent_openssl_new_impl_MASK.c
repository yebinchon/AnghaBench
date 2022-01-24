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
struct bufferevent {int enabled; int /*<<< orphan*/  ev_write; int /*<<< orphan*/  ev_read; int /*<<< orphan*/  output; } ;
struct bufferevent_private {struct bufferevent bev; } ;
struct bufferevent_openssl {int state; int last_write; struct bufferevent_private bev; scalar_t__ fd_is_set; int /*<<< orphan*/ * ssl; int /*<<< orphan*/  outbuf_cb; struct bufferevent* underlying; } ;
typedef  scalar_t__ evutil_socket_t ;
typedef  enum bufferevent_ssl_state { ____Placeholder_bufferevent_ssl_state } bufferevent_ssl_state ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int BEV_OPT_THREADSAFE ; 
 int /*<<< orphan*/  BEV_SUSPEND_FILT_READ ; 
#define  BUFFEREVENT_SSL_ACCEPTING 130 
#define  BUFFEREVENT_SSL_CONNECTING 129 
#define  BUFFEREVENT_SSL_OPEN 128 
 int EV_READ ; 
 int EV_WRITE ; 
 int /*<<< orphan*/  SSL_MODE_ACCEPT_MOVING_WRITE_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  be_openssl_outbuf_cb ; 
 int /*<<< orphan*/  FUNC3 (struct bufferevent*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bufferevent*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC6 (struct bufferevent*) ; 
 scalar_t__ FUNC7 (struct bufferevent_private*,struct event_base*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct bufferevent*) ; 
 int /*<<< orphan*/  bufferevent_ops_openssl ; 
 int /*<<< orphan*/  FUNC9 (struct bufferevent*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct bufferevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bufferevent_openssl*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct bufferevent_openssl*) ; 
 struct bufferevent_openssl* FUNC14 (int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct bufferevent_openssl*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct bufferevent_openssl*,scalar_t__) ; 

__attribute__((used)) static struct bufferevent *
FUNC17(struct event_base *base,
    struct bufferevent *underlying,
    evutil_socket_t fd,
    SSL *ssl,
    enum bufferevent_ssl_state state,
    int options)
{
	struct bufferevent_openssl *bev_ssl = NULL;
	struct bufferevent_private *bev_p = NULL;
	int tmp_options = options & ~BEV_OPT_THREADSAFE;

	if (underlying != NULL && fd >= 0)
		return NULL; /* Only one can be set. */

	if (!(bev_ssl = FUNC14(1, sizeof(struct bufferevent_openssl))))
		goto err;

	bev_p = &bev_ssl->bev;

	if (FUNC7(bev_p, base,
		&bufferevent_ops_openssl, tmp_options) < 0)
		goto err;

	/* Don't explode if we decide to realloc a chunk we're writing from in
	 * the output buffer. */
	FUNC2(ssl, SSL_MODE_ACCEPT_MOVING_WRITE_BUFFER);

	bev_ssl->underlying = underlying;
	bev_ssl->ssl = ssl;

	bev_ssl->outbuf_cb = FUNC11(bev_p->bev.output,
	    be_openssl_outbuf_cb, bev_ssl);

	if (options & BEV_OPT_THREADSAFE)
		FUNC4(&bev_ssl->bev.bev, NULL);

	if (underlying) {
		FUNC8(&bev_ssl->bev.bev);
		FUNC6(underlying);
	}

	bev_ssl->state = state;
	bev_ssl->last_write = -1;

	FUNC13(bev_ssl);

	switch (state) {
	case BUFFEREVENT_SSL_ACCEPTING:
		FUNC0(bev_ssl->ssl);
		if (FUNC15(bev_ssl, fd) < 0)
			goto err;
		break;
	case BUFFEREVENT_SSL_CONNECTING:
		FUNC1(bev_ssl->ssl);
		if (FUNC15(bev_ssl, fd) < 0)
			goto err;
		break;
	case BUFFEREVENT_SSL_OPEN:
		if (FUNC16(bev_ssl, fd) < 0)
			goto err;
		break;
	default:
		goto err;
	}

	if (underlying) {
		FUNC9(underlying, EV_READ, 0, 0);
		FUNC3(underlying, EV_READ|EV_WRITE);
		if (state == BUFFEREVENT_SSL_OPEN)
			FUNC10(underlying,
			    BEV_SUSPEND_FILT_READ);
	} else {
		bev_ssl->bev.bev.enabled = EV_READ|EV_WRITE;
		if (bev_ssl->fd_is_set) {
			if (state != BUFFEREVENT_SSL_OPEN)
				if (FUNC12(&bev_ssl->bev.bev.ev_read, NULL) < 0)
					goto err;
			if (FUNC12(&bev_ssl->bev.bev.ev_write, NULL) < 0)
				goto err;
		}
	}

	return &bev_ssl->bev.bev;
err:
	if (bev_ssl)
		FUNC5(&bev_ssl->bev.bev);
	return NULL;
}