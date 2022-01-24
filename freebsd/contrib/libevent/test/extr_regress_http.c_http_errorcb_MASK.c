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
struct bufferevent {int dummy; } ;

/* Variables and functions */
 short BEV_EVENT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ *) ; 
 int test_ok ; 

__attribute__((used)) static void
FUNC1(struct bufferevent *bev, short what, void *arg)
{
	/** For ssl */
	if (what & BEV_EVENT_CONNECTED)
		return;
	test_ok = -2;
	FUNC0(arg, NULL);
}