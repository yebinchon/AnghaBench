#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_3__ {scalar_t__ nvp_type; int nvp_nitems; size_t nvp_datasize; scalar_t__ nvp_data; } ;
typedef  TYPE_1__ nvpair_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ NV_TYPE_NUMBER_ARRAY ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (unsigned char const*) ; 
 scalar_t__ FUNC3 (unsigned char const*) ; 
 scalar_t__* FUNC4 (size_t) ; 

const unsigned char *
FUNC5(bool isbe, nvpair_t *nvp, const unsigned char *ptr,
     size_t *leftp)
{
	uint64_t *value;
	size_t size;
	unsigned int i;

	FUNC1(nvp->nvp_type == NV_TYPE_NUMBER_ARRAY);

	size = sizeof(*value) * nvp->nvp_nitems;
	if (nvp->nvp_datasize != size || *leftp < size ||
	    nvp->nvp_nitems == 0 || size < nvp->nvp_nitems) {
		FUNC0(EINVAL);
		return (NULL);
	}

	value = FUNC4(size);
	if (value == NULL)
		return (NULL);

	for (i = 0; i < nvp->nvp_nitems; i++) {
		if (isbe)
			value[i] = FUNC2(ptr);
		else
			value[i] = FUNC3(ptr);

		ptr += sizeof(*value);
		*leftp -= sizeof(*value);
	}

	nvp->nvp_data = (uint64_t)(uintptr_t)value;

	return (ptr);
}