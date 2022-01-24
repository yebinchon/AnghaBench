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
struct win32_extension_fns {scalar_t__ ConnectEx; } ;
struct bufferevent {int /*<<< orphan*/  ev_base; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bufferevent*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct win32_extension_fns* FUNC2 () ; 

int
FUNC3(struct bufferevent *bev)
{
	const struct win32_extension_fns *ext =
	    FUNC2();

	if (FUNC0(bev) &&
	    FUNC1(bev->ev_base) &&
	    ext && ext->ConnectEx)
		return 1;

	return 0;
}