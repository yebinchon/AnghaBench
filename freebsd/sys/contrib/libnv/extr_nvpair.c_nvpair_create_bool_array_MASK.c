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
 int /*<<< orphan*/  NV_TYPE_BOOL_ARRAY ; 
 int /*<<< orphan*/  FUNC3 (void*,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (size_t) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,size_t) ; 

nvpair_t *
FUNC7(const char *name, const bool *value, size_t nitems)
{
	nvpair_t *nvp;
	size_t size;
	void *data;

	if (value == NULL || nitems == 0) {
		FUNC2(EINVAL);
		return (NULL);
	}

	size = sizeof(value[0]) * nitems;
	data = FUNC5(size);
	if (data == NULL)
		return (NULL);

	FUNC3(data, value, size);
	nvp = FUNC6(name, NV_TYPE_BOOL_ARRAY, (uint64_t)(uintptr_t)data,
	    size, nitems);
	if (nvp == NULL) {
		FUNC1();
		FUNC4(data);
		FUNC0();
	}

	return (nvp);
}