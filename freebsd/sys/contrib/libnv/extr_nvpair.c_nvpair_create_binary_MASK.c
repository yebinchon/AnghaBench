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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NV_TYPE_BINARY ; 
 int /*<<< orphan*/  FUNC1 (void*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (size_t) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 

nvpair_t *
FUNC5(const char *name, const void *value, size_t size)
{
	nvpair_t *nvp;
	void *data;

	if (value == NULL || size == 0) {
		FUNC0(EINVAL);
		return (NULL);
	}

	data = FUNC3(size);
	if (data == NULL)
		return (NULL);
	FUNC1(data, value, size);

	nvp = FUNC4(name, NV_TYPE_BINARY, (uint64_t)(uintptr_t)data,
	    size, 0);
	if (nvp == NULL)
		FUNC2(data);

	return (nvp);
}