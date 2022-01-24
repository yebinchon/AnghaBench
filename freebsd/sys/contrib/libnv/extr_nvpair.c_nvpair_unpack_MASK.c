#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* nvp_name; int nvp_data; int /*<<< orphan*/  nvp_magic; } ;
typedef  TYPE_1__ nvpair_t ;

/* Variables and functions */
 int /*<<< orphan*/  NVPAIR_MAGIC ; 
 scalar_t__ NV_NAME_MAX ; 
 TYPE_1__* FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (TYPE_1__*,scalar_t__) ; 
 unsigned char* FUNC3 (int,TYPE_1__*,unsigned char const*,size_t*) ; 
 scalar_t__ FUNC4 (char*) ; 

const unsigned char *
FUNC5(bool isbe, const unsigned char *ptr, size_t *leftp,
    nvpair_t **nvpp)
{
	nvpair_t *nvp, *tmp;

	nvp = FUNC0(1, sizeof(*nvp) + NV_NAME_MAX);
	if (nvp == NULL)
		return (NULL);
	nvp->nvp_name = (char *)(nvp + 1);

	ptr = FUNC3(isbe, nvp, ptr, leftp);
	if (ptr == NULL)
		goto fail;
	tmp = FUNC2(nvp, sizeof(*nvp) + FUNC4(nvp->nvp_name) + 1);
	if (tmp == NULL)
		goto fail;
	nvp = tmp;

	/* Update nvp_name after realloc(). */
	nvp->nvp_name = (char *)(nvp + 1);
	nvp->nvp_data = 0x00;
	nvp->nvp_magic = NVPAIR_MAGIC;
	*nvpp = nvp;
	return (ptr);
fail:
	FUNC1(nvp);
	return (NULL);
}