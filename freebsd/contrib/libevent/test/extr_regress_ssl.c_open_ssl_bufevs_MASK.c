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
typedef  int /*<<< orphan*/  evutil_socket_t ;
typedef  enum regress_openssl_type { ____Placeholder_regress_openssl_type } regress_openssl_type ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int BUFFEREVENT_SSL_ACCEPTING ; 
 int BUFFEREVENT_SSL_CONNECTING ; 
 int BUFFEREVENT_SSL_OPEN ; 
 long REGRESS_OPENSSL_CLIENT ; 
 int REGRESS_OPENSSL_DIRTY_SHUTDOWN ; 
 long REGRESS_OPENSSL_SERVER ; 
 struct bufferevent* FUNC0 (struct event_base*,struct bufferevent*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*,int) ; 
 struct bufferevent* FUNC2 (struct event_base*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bufferevent*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  done_writing_cb ; 
 int /*<<< orphan*/  eventcb ; 
 int /*<<< orphan*/  respond_to_number ; 

__attribute__((used)) static void
FUNC4(struct bufferevent **bev1_out, struct bufferevent **bev2_out,
    struct event_base *base, int is_open, int flags, SSL *ssl1, SSL *ssl2,
    evutil_socket_t *fd_pair, struct bufferevent **underlying_pair,
    enum regress_openssl_type type)
{
	int state1 = is_open ? BUFFEREVENT_SSL_OPEN :BUFFEREVENT_SSL_CONNECTING;
	int state2 = is_open ? BUFFEREVENT_SSL_OPEN :BUFFEREVENT_SSL_ACCEPTING;
	int dirty_shutdown = type & REGRESS_OPENSSL_DIRTY_SHUTDOWN;
	if (fd_pair) {
		*bev1_out = FUNC2(
			base, fd_pair[0], ssl1, state1, flags);
		*bev2_out = FUNC2(
			base, fd_pair[1], ssl2, state2, flags);
	} else {
		*bev1_out = FUNC0(
			base, underlying_pair[0], ssl1, state1, flags);
		*bev2_out = FUNC0(
			base, underlying_pair[1], ssl2, state2, flags);

	}
	FUNC3(*bev1_out, respond_to_number, done_writing_cb,
	    eventcb, (void*)(REGRESS_OPENSSL_CLIENT | (long)type));
	FUNC3(*bev2_out, respond_to_number, done_writing_cb,
	    eventcb, (void*)(REGRESS_OPENSSL_SERVER | (long)type));

	FUNC1(*bev1_out, dirty_shutdown);
	FUNC1(*bev2_out, dirty_shutdown);
}