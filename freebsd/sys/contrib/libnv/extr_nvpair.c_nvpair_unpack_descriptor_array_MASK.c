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
typedef  void* uint64_t ;
struct TYPE_3__ {scalar_t__ nvp_type; int nvp_nitems; size_t nvp_datasize; void* nvp_data; } ;
typedef  TYPE_1__ nvpair_t ;
typedef  size_t int64_t ;
typedef  int /*<<< orphan*/  idx ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ NV_TYPE_DESCRIPTOR_ARRAY ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 size_t FUNC2 (unsigned char const*) ; 
 size_t FUNC3 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 scalar_t__ FUNC5 (size_t) ; 

const unsigned char *
FUNC6(bool isbe, nvpair_t *nvp,
    const unsigned char *ptr, size_t *leftp, const int *fds, size_t nfds)
{
	int64_t idx;
	size_t size;
	unsigned int ii;
	int *array;

	FUNC1(nvp->nvp_type == NV_TYPE_DESCRIPTOR_ARRAY);

	size = sizeof(idx) * nvp->nvp_nitems;
	if (nvp->nvp_datasize != size || *leftp < size ||
	    nvp->nvp_nitems == 0 || size < nvp->nvp_nitems) {
		FUNC0(EINVAL);
		return (NULL);
	}

	array = (int *)FUNC5(size);
	if (array == NULL)
		return (NULL);

	for (ii = 0; ii < nvp->nvp_nitems; ii++) {
		if (isbe)
			idx = FUNC2(ptr);
		else
			idx = FUNC3(ptr);

		if (idx < 0) {
			FUNC0(EINVAL);
			FUNC4(array);
			return (NULL);
		}

		if ((size_t)idx >= nfds) {
			FUNC0(EINVAL);
			FUNC4(array);
			return (NULL);
		}

		array[ii] = (uint64_t)fds[idx];

		ptr += sizeof(idx);
		*leftp -= sizeof(idx);
	}

	nvp->nvp_data = (uint64_t)(uintptr_t)array;

	return (ptr);
}