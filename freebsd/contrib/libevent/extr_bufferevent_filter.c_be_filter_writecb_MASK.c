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
struct bufferevent_private {scalar_t__ refcnt; } ;
struct bufferevent_filtered {int dummy; } ;
struct bufferevent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufferevent*) ; 
 int /*<<< orphan*/  BEV_NORMAL ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*) ; 
 struct bufferevent_private* FUNC2 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct bufferevent_filtered*,int /*<<< orphan*/ ,int*) ; 
 struct bufferevent* FUNC5 (struct bufferevent_filtered*) ; 

__attribute__((used)) static void
FUNC6(struct bufferevent *underlying, void *me_)
{
	struct bufferevent_filtered *bevf = me_;
	struct bufferevent *bev = FUNC5(bevf);
	struct bufferevent_private *bufev_private = FUNC2(bev);
	int processed_any = 0;

	FUNC0(bev);

	// It's possible our refcount is 0 at this point if another thread free'd our filterevent
	FUNC3(bufev_private->refcnt >= 0);

	// If our refcount is > 0
	if (bufev_private->refcnt > 0) {
		FUNC4(bevf, BEV_NORMAL, &processed_any);
	}

	FUNC1(bev);
}