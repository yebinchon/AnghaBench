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

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NV_TYPE_STRING ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*) ; 

nvpair_t *
FUNC6(const char *name, char *value)
{
	nvpair_t *nvp;

	if (value == NULL) {
		FUNC2(EINVAL);
		return (NULL);
	}

	nvp = FUNC4(name, NV_TYPE_STRING, (uint64_t)(uintptr_t)value,
	    FUNC5(value) + 1, 0);
	if (nvp == NULL) {
		FUNC1();
		FUNC3(value);
		FUNC0();
	}

	return (nvp);
}