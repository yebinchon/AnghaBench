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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NV_TYPE_NVLIST ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

nvpair_t *
FUNC5(const char *name, const nvlist_t *value)
{
	nvlist_t *nvl;
	nvpair_t *nvp;

	if (value == NULL) {
		FUNC0(EINVAL);
		return (NULL);
	}

	nvl = FUNC1(value);
	if (nvl == NULL)
		return (NULL);

	nvp = FUNC4(name, NV_TYPE_NVLIST, (uint64_t)(uintptr_t)nvl, 0,
	    0);
	if (nvp == NULL)
		FUNC2(nvl);
	else
		FUNC3(nvl, nvp);

	return (nvp);
}