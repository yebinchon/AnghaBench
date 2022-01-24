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
struct bufferevent {int /*<<< orphan*/  timeout_write; int /*<<< orphan*/  ev_write; int /*<<< orphan*/  timeout_read; int /*<<< orphan*/  ev_read; int /*<<< orphan*/  ev_base; } ;
struct TYPE_2__ {struct bufferevent bev; } ;
struct bufferevent_openssl {int fd_is_set; TYPE_1__ bev; scalar_t__ underlying; } ;
typedef  int /*<<< orphan*/  evutil_socket_t ;

/* Variables and functions */
 int EV_FINALIZE ; 
 int EV_PERSIST ; 
 int EV_READ ; 
 int EV_WRITE ; 
 int /*<<< orphan*/  be_openssl_eventcb ; 
 int /*<<< orphan*/  be_openssl_readcb ; 
 int /*<<< orphan*/  be_openssl_readeventcb ; 
 int /*<<< orphan*/  be_openssl_writecb ; 
 int /*<<< orphan*/  be_openssl_writeeventcb ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bufferevent_openssl*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct bufferevent_openssl*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct bufferevent_openssl *bev_ssl, evutil_socket_t fd)
{
	if (bev_ssl->underlying) {
		FUNC1(bev_ssl->underlying,
		    be_openssl_readcb, be_openssl_writecb, be_openssl_eventcb,
		    bev_ssl);
		return 0;
	} else {
		struct bufferevent *bev = &bev_ssl->bev.bev;
		int rpending=0, wpending=0, r1=0, r2=0;
		if (fd < 0 && bev_ssl->fd_is_set)
			fd = FUNC4(&bev->ev_read);
		if (bev_ssl->fd_is_set) {
			rpending = FUNC5(&bev->ev_read, EV_READ, NULL);
			wpending = FUNC5(&bev->ev_write, EV_WRITE, NULL);
			FUNC3(&bev->ev_read);
			FUNC3(&bev->ev_write);
		}
		FUNC2(&bev->ev_read, bev->ev_base, fd,
		    EV_READ|EV_PERSIST|EV_FINALIZE,
		    be_openssl_readeventcb, bev_ssl);
		FUNC2(&bev->ev_write, bev->ev_base, fd,
		    EV_WRITE|EV_PERSIST|EV_FINALIZE,
		    be_openssl_writeeventcb, bev_ssl);
		if (rpending)
			r1 = FUNC0(&bev->ev_read, &bev->timeout_read);
		if (wpending)
			r2 = FUNC0(&bev->ev_write, &bev->timeout_write);
		if (fd >= 0) {
			bev_ssl->fd_is_set = 1;
		}
		return (r1<0 || r2<0) ? -1 : 0;
	}
}