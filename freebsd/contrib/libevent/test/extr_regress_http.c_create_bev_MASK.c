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
struct bufferevent {int dummy; } ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int BEV_OPT_DEFER_CALLBACKS ; 
 int /*<<< orphan*/  BUFFEREVENT_SSL_CONNECTING ; 
 int HTTP_SSL_FILTER ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 struct bufferevent* FUNC1 (struct event_base*,struct bufferevent*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bufferevent*,int) ; 
 struct bufferevent* FUNC3 (struct event_base*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct bufferevent* FUNC4 (struct event_base*,int,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static struct bufferevent *
FUNC6(struct event_base *base, int fd, int ssl_mask)
{
	int flags = BEV_OPT_DEFER_CALLBACKS;
	struct bufferevent *bev = NULL;

	if (!ssl_mask) {
		bev = FUNC4(base, fd, flags);
	} else {
#ifdef EVENT__HAVE_OPENSSL
		SSL *ssl = SSL_new(get_ssl_ctx());
		if (ssl_mask & HTTP_SSL_FILTER) {
			struct bufferevent *underlying =
				bufferevent_socket_new(base, fd, flags);
			bev = bufferevent_openssl_filter_new(
				base, underlying, ssl, BUFFEREVENT_SSL_CONNECTING, flags);
		} else {
			bev = bufferevent_openssl_socket_new(
				base, fd, ssl, BUFFEREVENT_SSL_CONNECTING, flags);
		}
		bufferevent_openssl_set_allow_dirty_shutdown(bev, 1);
#endif
	}

	return bev;
}