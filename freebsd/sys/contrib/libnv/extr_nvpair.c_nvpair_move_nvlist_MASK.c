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
 scalar_t__ EINVAL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  NV_TYPE_NVLIST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

nvpair_t *
FUNC6(const char *name, nvlist_t *value)
{
	nvpair_t *nvp;

	if (value == NULL || FUNC3(value) != NULL) {
		FUNC0(EINVAL);
		return (NULL);
	}

	if (FUNC2(value) != 0) {
		FUNC0(FUNC2(value));
		FUNC1(value);
		return (NULL);
	}

	nvp = FUNC5(name, NV_TYPE_NVLIST, (uint64_t)(uintptr_t)value,
	    0, 0);
	if (nvp == NULL)
		FUNC1(value);
	else
		FUNC4(value, nvp);

	return (nvp);
}