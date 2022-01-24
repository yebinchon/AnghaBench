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

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC1 (int /*<<< orphan*/  const*,void**) ; 

const nvlist_t *
FUNC2(const nvlist_t *nvl, void **cookiep)
{
	const nvlist_t *ret;

	ret = FUNC0(nvl);
	if (ret != NULL) {
		if (cookiep != NULL)
			*cookiep = NULL;
		return (ret);
	}

	return (FUNC1(nvl, cookiep));
}