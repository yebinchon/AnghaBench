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
struct bufferevent {int enabled; } ;
struct TYPE_2__ {struct bufferevent bev; } ;
struct bufferevent_openssl {scalar_t__ write_blocked_on_read; TYPE_1__ bev; } ;

/* Variables and functions */
 int EV_READ ; 
 int EV_WRITE ; 
 int FUNC0 (struct bufferevent_openssl*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent_openssl*) ; 

__attribute__((used)) static int
FUNC2(struct bufferevent_openssl *bev_ssl)
{
	struct bufferevent *bev = &bev_ssl->bev.bev;
	int r = 0;
	bev_ssl->write_blocked_on_read = 0;
	if (!(bev->enabled & EV_READ))
		FUNC1(bev_ssl);
	if (bev->enabled & EV_WRITE)
		r = FUNC0(bev_ssl);
	return r;
}