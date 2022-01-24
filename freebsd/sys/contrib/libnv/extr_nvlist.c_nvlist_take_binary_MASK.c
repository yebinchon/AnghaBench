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
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  NV_TYPE_BINARY ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,size_t*) ; 

void *
FUNC5(nvlist_t *nvl, const char *name, size_t *sizep)
{
	nvpair_t *nvp;
	void *value;

	nvp = FUNC0(nvl, NV_TYPE_BINARY, name);
	if (nvp == NULL)
		FUNC2(NV_TYPE_BINARY, name);

	value = (void *)(intptr_t)FUNC4(nvp, sizep);
	FUNC1(nvl, nvp);
	FUNC3(nvp);
	return (value);
}