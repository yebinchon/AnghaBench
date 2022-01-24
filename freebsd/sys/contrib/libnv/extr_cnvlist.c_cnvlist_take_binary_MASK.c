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

/* Variables and functions */
 scalar_t__ NV_TYPE_BINARY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 scalar_t__ FUNC3 (void*,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/ * FUNC5 (void*) ; 
 scalar_t__ FUNC6 (void*) ; 

void *
FUNC7(void *cookie, size_t *sizep)
{
	void *value;
	nvlist_t *nvl;

	if (FUNC6(cookie) != NV_TYPE_BINARY)
		FUNC1(NV_TYPE_BINARY, FUNC4(cookie));
	nvl = FUNC5(cookie);
	value = (void *)(intptr_t)FUNC3(cookie, sizep);
	FUNC0(nvl, cookie);
	FUNC2(cookie);
	return (value);
}