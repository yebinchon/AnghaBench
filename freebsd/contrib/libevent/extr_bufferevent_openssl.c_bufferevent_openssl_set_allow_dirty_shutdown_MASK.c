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
struct bufferevent_openssl {int allow_dirty_shutdown; } ;
struct bufferevent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*) ; 
 struct bufferevent_openssl* FUNC2 (struct bufferevent*) ; 

void
FUNC3(struct bufferevent *bev,
    int allow_dirty_shutdown)
{
	struct bufferevent_openssl *bev_ssl;
	FUNC0(bev);
	bev_ssl = FUNC2(bev);
	if (bev_ssl)
		bev_ssl->allow_dirty_shutdown = !!allow_dirty_shutdown;
	FUNC1(bev);
}