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
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  NV_TYPE_BINARY ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 void const* FUNC2 (int /*<<< orphan*/ *,size_t*) ; 

const void *
FUNC3(const nvlist_t *nvl, const char *name, size_t *sizep)
{
	nvpair_t *nvp;

	nvp = FUNC0(nvl, NV_TYPE_BINARY, name);
	if (nvp == NULL)
		FUNC1(NV_TYPE_BINARY, name);

	return (FUNC2(nvp, sizep));
}