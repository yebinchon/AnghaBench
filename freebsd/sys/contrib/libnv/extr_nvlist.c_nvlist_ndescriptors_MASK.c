#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nvpair_t ;
struct TYPE_9__ {scalar_t__ nvl_error; } ;
typedef  TYPE_1__ nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
#define  NV_TYPE_DESCRIPTOR 131 
#define  NV_TYPE_DESCRIPTOR_ARRAY 130 
#define  NV_TYPE_NVLIST 129 
#define  NV_TYPE_NVLIST_ARRAY 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* FUNC2 (TYPE_1__ const*,void**) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__ const*,int*,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__** FUNC6 (int /*<<< orphan*/ *,size_t*) ; 

size_t
FUNC7(const nvlist_t *nvl)
{
#ifndef _KERNEL
	void *cookie;
	nvpair_t *nvp;
	size_t ndescs;
	int type;

	FUNC0(nvl);
	FUNC1(nvl->nvl_error == 0);

	ndescs = 0;
	cookie = NULL;
	do {
		while (FUNC3(nvl, &type, &cookie) != NULL) {
			nvp = cookie;
			switch (type) {
			case NV_TYPE_DESCRIPTOR:
				ndescs++;
				break;
			case NV_TYPE_NVLIST:
				nvl = FUNC5(nvp);
				cookie = NULL;
				break;
			case NV_TYPE_NVLIST_ARRAY:
			    {
				const nvlist_t * const *value;
				size_t nitems;

				value = FUNC6(nvp, &nitems);
				FUNC1(value != NULL);
				FUNC1(nitems > 0);

				nvl = value[0];
				cookie = NULL;
				break;
			    }
			case NV_TYPE_DESCRIPTOR_ARRAY:
			    {
				size_t nitems;

				(void)FUNC4(nvp,
				    &nitems);
				ndescs += nitems;
				break;
			    }
			}
		}
	} while ((nvl = FUNC2(nvl, &cookie)) != NULL);

	return (ndescs);
#else
	return (0);
#endif
}