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
struct bufferevent_filtered {int dummy; } ;
struct bufferevent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC2 (struct bufferevent*,void*) ; 
 struct bufferevent* FUNC3 (struct bufferevent_filtered*) ; 

__attribute__((used)) static void
FUNC4(struct bufferevent *underlying, void *me_)
{
	struct bufferevent_filtered *bevf = me_;
	struct bufferevent *bev = FUNC3(bevf);

	FUNC0(bev);

	FUNC2(underlying, me_);

	FUNC1(bev);
}