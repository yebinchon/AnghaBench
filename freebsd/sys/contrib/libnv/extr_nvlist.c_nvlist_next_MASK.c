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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,void*) ; 
 char const* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

const char *
FUNC5(const nvlist_t *nvl, int *typep, void **cookiep)
{
	nvpair_t *nvp;

	FUNC0(nvl);

	if (cookiep == NULL || *cookiep == NULL)
		nvp = FUNC1(nvl);
	else
		nvp = FUNC2(nvl, *cookiep);
	if (nvp == NULL)
		return (NULL);
	if (typep != NULL)
		*typep = FUNC4(nvp);
	if (cookiep != NULL)
		*cookiep = nvp;
	return (FUNC3(nvp));
}