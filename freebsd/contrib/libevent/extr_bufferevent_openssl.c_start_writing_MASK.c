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
struct bufferevent {int /*<<< orphan*/  timeout_read; int /*<<< orphan*/  ev_read; int /*<<< orphan*/  timeout_write; int /*<<< orphan*/  ev_write; } ;
struct TYPE_2__ {struct bufferevent bev; } ;
struct bufferevent_openssl {scalar_t__ write_blocked_on_read; TYPE_1__ bev; scalar_t__ underlying; } ;

/* Variables and functions */
 int /*<<< orphan*/  BEV_SUSPEND_FILT_READ ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct bufferevent_openssl *bev_ssl)
{
	int r = 0;
	if (bev_ssl->underlying) {
		if (bev_ssl->write_blocked_on_read) {
			FUNC1(bev_ssl->underlying,
			    BEV_SUSPEND_FILT_READ);
		}
	} else {
		struct bufferevent *bev = &bev_ssl->bev.bev;
		r = FUNC0(&bev->ev_write, &bev->timeout_write);
		if (!r && bev_ssl->write_blocked_on_read)
			r = FUNC0(&bev->ev_read,
			    &bev->timeout_read);
	}
	return r;
}