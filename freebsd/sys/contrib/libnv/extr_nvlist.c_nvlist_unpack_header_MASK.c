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
struct nvlist_header {size_t nvlh_size; size_t nvlh_descriptors; int nvlh_flags; } ;
struct TYPE_3__ {int nvl_flags; } ;
typedef  TYPE_1__ nvlist_t ;
typedef  int /*<<< orphan*/  nvlhdr ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int NV_FLAG_ALL_MASK ; 
 int NV_FLAG_BIG_ENDIAN ; 
 int NV_FLAG_IN_ARRAY ; 
 int NV_FLAG_PUBLIC_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct nvlist_header*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nvlist_header*) ; 

const unsigned char *
FUNC3(nvlist_t *nvl, const unsigned char *ptr, size_t nfds,
    bool *isbep, size_t *leftp)
{
	struct nvlist_header nvlhdr;
	int inarrayf;

	if (*leftp < sizeof(nvlhdr))
		goto fail;

	FUNC1(&nvlhdr, ptr, sizeof(nvlhdr));

	if (!FUNC2(&nvlhdr))
		goto fail;

	if (nvlhdr.nvlh_size != *leftp - sizeof(nvlhdr))
		goto fail;

	/*
	 * nvlh_descriptors might be smaller than nfds in embedded nvlists.
	 */
	if (nvlhdr.nvlh_descriptors > nfds)
		goto fail;

	if ((nvlhdr.nvlh_flags & ~NV_FLAG_ALL_MASK) != 0)
		goto fail;

	inarrayf = (nvl->nvl_flags & NV_FLAG_IN_ARRAY);
	nvl->nvl_flags = (nvlhdr.nvlh_flags & NV_FLAG_PUBLIC_MASK) | inarrayf;

	ptr += sizeof(nvlhdr);
	if (isbep != NULL)
		*isbep = (((int)nvlhdr.nvlh_flags & NV_FLAG_BIG_ENDIAN) != 0);
	*leftp -= sizeof(nvlhdr);

	return (ptr);
fail:
	FUNC0(EINVAL);
	return (NULL);
}