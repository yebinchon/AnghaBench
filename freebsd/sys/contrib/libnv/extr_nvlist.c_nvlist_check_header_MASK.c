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
struct nvlist_header {scalar_t__ nvlh_magic; int nvlh_flags; void* nvlh_descriptors; void* nvlh_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ NVLIST_HEADER_MAGIC ; 
 int NV_FLAG_ALL_MASK ; 
 int NV_FLAG_BIG_ENDIAN ; 
 void* FUNC1 (void*) ; 
 void* FUNC2 (void*) ; 

__attribute__((used)) static bool
FUNC3(struct nvlist_header *nvlhdrp)
{

	if (nvlhdrp->nvlh_magic != NVLIST_HEADER_MAGIC) {
		FUNC0(EINVAL);
		return (false);
	}
	if ((nvlhdrp->nvlh_flags & ~NV_FLAG_ALL_MASK) != 0) {
		FUNC0(EINVAL);
		return (false);
	}
#if BYTE_ORDER == BIG_ENDIAN
	if ((nvlhdrp->nvlh_flags & NV_FLAG_BIG_ENDIAN) == 0) {
		nvlhdrp->nvlh_size = FUNC2(nvlhdrp->nvlh_size);
		nvlhdrp->nvlh_descriptors = FUNC2(nvlhdrp->nvlh_descriptors);
	}
#else
	if ((nvlhdrp->nvlh_flags & NV_FLAG_BIG_ENDIAN) != 0) {
		nvlhdrp->nvlh_size = be64toh(nvlhdrp->nvlh_size);
		nvlhdrp->nvlh_descriptors = be64toh(nvlhdrp->nvlh_descriptors);
	}
#endif
	return (true);
}