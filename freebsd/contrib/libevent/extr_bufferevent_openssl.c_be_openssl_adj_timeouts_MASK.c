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
struct bufferevent {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct bufferevent*) ; 
 int FUNC1 (struct bufferevent*) ; 
 struct bufferevent_openssl* FUNC2 (struct bufferevent*) ; 

__attribute__((used)) static int
FUNC3(struct bufferevent *bev)
{
	struct bufferevent_openssl *bev_ssl = FUNC2(bev);

	if (bev_ssl->underlying) {
		return FUNC1(bev);
	} else {
		return FUNC0(bev);
	}
}