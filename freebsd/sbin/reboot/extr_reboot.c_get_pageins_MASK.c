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
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  pageins ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static u_int
FUNC2(void)
{
	u_int pageins;
	size_t len;

	len = sizeof(pageins);
	if (FUNC0("vm.stats.vm.v_swappgsin", &pageins, &len, NULL, 0)
	    != 0) {
		FUNC1("v_swappgsin");
		return (0);
	}
	return pageins;
}