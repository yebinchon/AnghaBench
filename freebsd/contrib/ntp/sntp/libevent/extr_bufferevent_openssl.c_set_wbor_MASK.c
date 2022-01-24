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
struct bufferevent_openssl {int write_blocked_on_read; int /*<<< orphan*/  underlying; } ;

/* Variables and functions */
 int FUNC0 (struct bufferevent_openssl*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent_openssl*) ; 

__attribute__((used)) static int
FUNC2(struct bufferevent_openssl *bev_ssl)
{
	if (!bev_ssl->underlying)
		FUNC1(bev_ssl);
	bev_ssl->write_blocked_on_read = 1;
	return FUNC0(bev_ssl);
}