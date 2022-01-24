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
typedef  struct ev_token_bucket_cfg const ev_token_bucket_cfg ;
struct bufferevent_private {TYPE_1__* rate_limiting; } ;
struct bufferevent {int dummy; } ;
struct TYPE_2__ {struct ev_token_bucket_cfg const* cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufferevent const*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent const*) ; 
 struct bufferevent_private* FUNC2 (struct bufferevent const*) ; 

const struct ev_token_bucket_cfg *
FUNC3(const struct bufferevent *bev) {
	struct bufferevent_private *bufev_private = FUNC2(bev);
	struct ev_token_bucket_cfg *cfg;

	FUNC0(bev);

	if (bufev_private->rate_limiting) {
		cfg = bufev_private->rate_limiting->cfg;
	} else {
		cfg = NULL;
	}

	FUNC1(bev);

	return cfg;
}