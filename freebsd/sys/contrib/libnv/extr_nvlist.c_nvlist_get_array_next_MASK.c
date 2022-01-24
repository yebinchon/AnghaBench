#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nvpair_t ;
struct TYPE_6__ {int /*<<< orphan*/ * nvl_array_next; } ;
typedef  TYPE_1__ nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 TYPE_1__ const* FUNC1 (int /*<<< orphan*/ *) ; 

const nvlist_t *
FUNC2(const nvlist_t *nvl)
{
	nvpair_t *nvp;

	FUNC0(nvl);

	nvp = nvl->nvl_array_next;
	if (nvp == NULL)
		return (NULL);

	return (FUNC1(nvp));
}