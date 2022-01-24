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
struct timeval {int member_0; int /*<<< orphan*/  member_1; } ;
struct sockaddr {int dummy; } ;
struct evconnlistener {int dummy; } ;
struct bufferevent {int dummy; } ;
struct basic_test_data {int /*<<< orphan*/  base; scalar_t__ setup_data; } ;
typedef  int /*<<< orphan*/  evutil_socket_t ;
typedef  enum regress_openssl_type { ____Placeholder_regress_openssl_type } regress_openssl_type ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int BEV_OPT_CLOSE_ON_FREE ; 
 int BEV_OPT_DEFER_CALLBACKS ; 
 int /*<<< orphan*/  BUFFEREVENT_SSL_ACCEPTING ; 
 int EV_READ ; 
 int /*<<< orphan*/  EV_TIMEOUT ; 
 int EV_WRITE ; 
 scalar_t__ REGRESS_OPENSSL_SERVER ; 
 int REGRESS_OPENSSL_SLEEP ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acceptcb_deferred ; 
 int /*<<< orphan*/  FUNC3 (struct bufferevent*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bufferevent*,int) ; 
 struct bufferevent* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bufferevent*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC7 (struct evconnlistener*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bufferevent*,struct timeval*) ; 
 int /*<<< orphan*/  eventcb ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  respond_to_number ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static void
FUNC12(struct evconnlistener *listener, evutil_socket_t fd,
    struct sockaddr *addr, int socklen, void *arg)
{
	struct basic_test_data *data = arg;
	struct bufferevent *bev;
	enum regress_openssl_type type;
	SSL *ssl = FUNC0(FUNC9());

	type = (enum regress_openssl_type)data->setup_data;

	FUNC2(ssl, FUNC10());
	FUNC1(ssl, FUNC11());

	bev = FUNC5(
		data->base,
		fd,
		ssl,
		BUFFEREVENT_SSL_ACCEPTING,
		BEV_OPT_CLOSE_ON_FREE|BEV_OPT_DEFER_CALLBACKS);

	FUNC6(bev, respond_to_number, NULL, eventcb,
	    (void*)(REGRESS_OPENSSL_SERVER));

	if (type & REGRESS_OPENSSL_SLEEP) {
		struct timeval when = { 1, 0 };
		FUNC8(data->base, -1, EV_TIMEOUT,
		    acceptcb_deferred, bev, &when);
		FUNC3(bev, EV_READ|EV_WRITE);
	} else {
		FUNC4(bev, EV_READ|EV_WRITE);
	}

	/* Only accept once, then disable ourself. */
	FUNC7(listener);
}