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
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  nv_alloc_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  NVS_OP_DECODE ; 
 int FUNC0 (int /*<<< orphan*/ *,char*,size_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC3(char *buf, size_t buflen, nvlist_t **nvlp, nv_alloc_t *nva)
{
	nvlist_t *nvl;
	int err;

	if (nvlp == NULL)
		return (EINVAL);

	if ((err = FUNC2(&nvl, 0, nva)) != 0)
		return (err);

	if ((err = FUNC0(nvl, buf, &buflen, 0, NVS_OP_DECODE)) != 0)
		FUNC1(nvl);
	else
		*nvlp = nvl;

	return (err);
}