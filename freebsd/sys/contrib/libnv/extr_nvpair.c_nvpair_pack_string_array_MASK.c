#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ nvp_type; size_t nvp_datasize; unsigned int nvp_nitems; } ;
typedef  TYPE_1__ nvpair_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 scalar_t__ NV_TYPE_STRING_ARRAY ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,void const*,size_t) ; 
 char** FUNC3 (TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int FUNC4 (char const* const) ; 

unsigned char *
FUNC5(const nvpair_t *nvp, unsigned char *ptr, size_t *leftp)
{
	unsigned int ii;
	size_t size, len;
	const char * const *array;

	FUNC0(nvp);
	FUNC1(nvp->nvp_type == NV_TYPE_STRING_ARRAY);
	FUNC1(*leftp >= nvp->nvp_datasize);

	size = 0;
	array = FUNC3(nvp, NULL);
	FUNC1(array != NULL);

	for (ii = 0; ii < nvp->nvp_nitems; ii++) {
		len = FUNC4(array[ii]) + 1;
		FUNC1(*leftp >= len);

		FUNC2(ptr, (const void *)array[ii], len);
		size += len;
		ptr += len;
		*leftp -= len;
	}

	FUNC1(size == nvp->nvp_datasize);

	return (ptr);
}