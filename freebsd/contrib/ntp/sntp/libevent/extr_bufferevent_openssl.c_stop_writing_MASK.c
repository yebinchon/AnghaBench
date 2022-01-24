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
struct bufferevent {int /*<<< orphan*/  ev_write; } ;
struct TYPE_2__ {struct bufferevent bev; } ;
struct bufferevent_openssl {TYPE_1__ bev; scalar_t__ underlying; scalar_t__ read_blocked_on_write; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(struct bufferevent_openssl *bev_ssl)
{
	if (bev_ssl->read_blocked_on_write)
		return;
	if (bev_ssl->underlying) {
		;
	} else {
		struct bufferevent *bev = &bev_ssl->bev.bev;
		FUNC0(&bev->ev_write);
	}
}