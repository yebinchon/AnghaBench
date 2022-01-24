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
struct nvpair_header {scalar_t__ nvph_type; size_t nvph_namesize; size_t nvph_datasize; int /*<<< orphan*/  nvph_nitems; } ;
typedef  int /*<<< orphan*/  nvphdr ;
struct TYPE_3__ {scalar_t__ nvp_type; size_t nvp_datasize; int /*<<< orphan*/  nvp_nitems; scalar_t__ nvp_data; struct nvpair_header* nvp_name; } ;
typedef  TYPE_1__ nvpair_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t NV_NAME_MAX ; 
 scalar_t__ NV_TYPE_FIRST ; 
 scalar_t__ NV_TYPE_LAST ; 
 scalar_t__ NV_TYPE_NVLIST_ARRAY_NEXT ; 
 scalar_t__ NV_TYPE_NVLIST_UP ; 
 size_t FUNC1 (size_t) ; 
 size_t FUNC2 (size_t) ; 
 size_t FUNC3 (size_t) ; 
 size_t FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct nvpair_header*,unsigned char const*,int) ; 
 size_t FUNC6 (char const*,int) ; 

const unsigned char *
FUNC7(bool isbe, nvpair_t *nvp, const unsigned char *ptr,
    size_t *leftp)
{
	struct nvpair_header nvphdr;

	if (*leftp < sizeof(nvphdr))
		goto fail;

	FUNC5(&nvphdr, ptr, sizeof(nvphdr));
	ptr += sizeof(nvphdr);
	*leftp -= sizeof(nvphdr);

#if NV_TYPE_FIRST > 0
	if (nvphdr.nvph_type < NV_TYPE_FIRST)
		goto fail;
#endif
	if (nvphdr.nvph_type > NV_TYPE_LAST &&
	    nvphdr.nvph_type != NV_TYPE_NVLIST_UP &&
	    nvphdr.nvph_type != NV_TYPE_NVLIST_ARRAY_NEXT) {
		goto fail;
	}

#if BYTE_ORDER == BIG_ENDIAN
	if (!isbe) {
		nvphdr.nvph_namesize = FUNC3(nvphdr.nvph_namesize);
		nvphdr.nvph_datasize = FUNC4(nvphdr.nvph_datasize);
	}
#else
	if (isbe) {
		nvphdr.nvph_namesize = be16toh(nvphdr.nvph_namesize);
		nvphdr.nvph_datasize = be64toh(nvphdr.nvph_datasize);
	}
#endif

	if (nvphdr.nvph_namesize > NV_NAME_MAX)
		goto fail;
	if (*leftp < nvphdr.nvph_namesize)
		goto fail;
	if (nvphdr.nvph_namesize < 1)
		goto fail;
	if (FUNC6((const char *)ptr, nvphdr.nvph_namesize) !=
	    (size_t)(nvphdr.nvph_namesize - 1)) {
		goto fail;
	}

	FUNC5(nvp->nvp_name, ptr, nvphdr.nvph_namesize);
	ptr += nvphdr.nvph_namesize;
	*leftp -= nvphdr.nvph_namesize;

	if (*leftp < nvphdr.nvph_datasize)
		goto fail;

	nvp->nvp_type = nvphdr.nvph_type;
	nvp->nvp_data = 0;
	nvp->nvp_datasize = nvphdr.nvph_datasize;
	nvp->nvp_nitems = nvphdr.nvph_nitems;

	return (ptr);
fail:
	FUNC0(EINVAL);
	return (NULL);
}