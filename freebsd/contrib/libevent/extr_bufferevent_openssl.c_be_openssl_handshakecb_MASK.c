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
struct bufferevent_openssl {int dummy; } ;
struct bufferevent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufferevent_openssl*) ; 

__attribute__((used)) static void
FUNC1(struct bufferevent *bev_base, void *ctx)
{
	struct bufferevent_openssl *bev_ssl = ctx;
	FUNC0(bev_ssl);/* XXX handle failure */
}