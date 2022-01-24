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
struct bufferevent_openssl {int /*<<< orphan*/  underlying; int /*<<< orphan*/  state; int /*<<< orphan*/  ssl; } ;
struct bufferevent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUFFEREVENT_SSL_CONNECTING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct bufferevent_openssl*) ; 
 scalar_t__ FUNC2 (struct bufferevent_openssl*,int) ; 
 struct bufferevent_openssl* FUNC3 (struct bufferevent*) ; 

int
FUNC4(struct bufferevent *bev)
{
	struct bufferevent_openssl *bev_ssl = FUNC3(bev);
	if (!bev_ssl)
		return -1;
	if (FUNC0(bev_ssl->ssl) < 0)
		return -1;
	bev_ssl->state = BUFFEREVENT_SSL_CONNECTING;
	if (FUNC2(bev_ssl, -1) < 0)
		return -1;
	if (!bev_ssl->underlying)
		return FUNC1(bev_ssl);
	return 0;
}