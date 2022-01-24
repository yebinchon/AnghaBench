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
typedef  int /*<<< orphan*/  value ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  nvpair_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NV_TYPE_NUMBER_ARRAY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,size_t) ; 

nvpair_t *
FUNC5(const char *name, uint64_t *value, size_t nitems)
{
	nvpair_t *nvp;

	if (value == NULL || nitems == 0) {
		FUNC2(EINVAL);
		return (NULL);
	}

	nvp = FUNC4(name, NV_TYPE_NUMBER_ARRAY,
	    (uint64_t)(uintptr_t)value, sizeof(value[0]) * nitems, nitems);
	if (nvp == NULL) {
		FUNC1();
		FUNC3(value);
		FUNC0();
	}

	return (nvp);
}