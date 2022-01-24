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
 int /*<<< orphan*/  NV_TYPE_STRING ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*) ; 

nvpair_t *
FUNC5(const char *name, const char *value)
{
	nvpair_t *nvp;
	size_t size;
	char *data;

	if (value == NULL) {
		FUNC0(EINVAL);
		return (NULL);
	}

	data = FUNC2(value);
	if (data == NULL)
		return (NULL);
	size = FUNC4(value) + 1;

	nvp = FUNC3(name, NV_TYPE_STRING, (uint64_t)(uintptr_t)data,
	    size, 0);
	if (nvp == NULL)
		FUNC1(data);

	return (nvp);
}