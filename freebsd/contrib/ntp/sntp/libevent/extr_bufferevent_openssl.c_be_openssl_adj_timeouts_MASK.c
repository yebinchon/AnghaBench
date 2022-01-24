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
struct bufferevent_openssl {scalar_t__ underlying; } ;
struct bufferevent {int /*<<< orphan*/  ev_write; int /*<<< orphan*/  timeout_write; int /*<<< orphan*/  ev_read; int /*<<< orphan*/  timeout_read; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_READ ; 
 int /*<<< orphan*/  EV_WRITE ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct bufferevent*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 struct bufferevent_openssl* FUNC5 (struct bufferevent*) ; 

__attribute__((used)) static int
FUNC6(struct bufferevent *bev)
{
	struct bufferevent_openssl *bev_ssl = FUNC5(bev);

	if (bev_ssl->underlying) {
		return FUNC1(bev);
	} else {
		int r1=0, r2=0;
		if (FUNC2(&bev->ev_read, EV_READ, NULL)) {
			if (FUNC4(&bev->timeout_read)) {
				r1 = FUNC0(&bev->ev_read, &bev->timeout_read);
			} else {
				FUNC3(&bev->ev_read);
			}
		}
		if (FUNC2(&bev->ev_write, EV_WRITE, NULL)) {
			if (FUNC4(&bev->timeout_write)) {
				r2 = FUNC0(&bev->ev_write, &bev->timeout_write);
			} else {
				FUNC3(&bev->ev_write);
			}
		}

		return (r1<0 || r2<0) ? -1 : 0;
	}
}