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
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  cap_channel_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,size_t*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3(cap_channel_t *chan, const char *name, void *oldp,
    size_t *oldlenp, const void *newp, size_t newlen)
{
	nvlist_t *req;

	req = FUNC2(0);
	FUNC1(req, "cmd", "sysctlbyname");
	FUNC1(req, "name", name);
	return (FUNC0(chan, req, oldp, oldlenp, newp, newlen));
}