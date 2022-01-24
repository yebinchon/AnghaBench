#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  ve_lastused; } ;
typedef  TYPE_1__ vdev_cache_entry_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (void const*,void const*) ; 

__attribute__((used)) static int
FUNC3(const void *a1, const void *a2)
{
	const vdev_cache_entry_t *ve1 = (const vdev_cache_entry_t *)a1;
	const vdev_cache_entry_t *ve2 = (const vdev_cache_entry_t *)a2;

	int cmp = FUNC0(ve1->ve_lastused, ve2->ve_lastused);
	if (FUNC1(cmp))
		return (cmp);

	/*
	 * Among equally old entries, sort by offset to ensure uniqueness.
	 */
	return (FUNC2(a1, a2));
}