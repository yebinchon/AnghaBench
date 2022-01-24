#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int nvl_flags; int /*<<< orphan*/  nvl_magic; int /*<<< orphan*/  nvl_head; int /*<<< orphan*/ * nvl_array_next; int /*<<< orphan*/ * nvl_parent; scalar_t__ nvl_error; } ;
typedef  TYPE_1__ nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  NVLIST_MAGIC ; 
 int NV_FLAG_PUBLIC_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int) ; 

nvlist_t *
FUNC3(int flags)
{
	nvlist_t *nvl;

	FUNC0((flags & ~(NV_FLAG_PUBLIC_MASK)) == 0);

	nvl = FUNC2(sizeof(*nvl));
	if (nvl == NULL)
		return (NULL);
	nvl->nvl_error = 0;
	nvl->nvl_flags = flags;
	nvl->nvl_parent = NULL;
	nvl->nvl_array_next = NULL;
	FUNC1(&nvl->nvl_head);
	nvl->nvl_magic = NVLIST_MAGIC;

	return (nvl);
}