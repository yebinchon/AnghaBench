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
struct page {scalar_t__ object; int /*<<< orphan*/  pindex; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ PMAP_HAS_DMAP ; 
 scalar_t__ VM_MIN_KERNEL_ADDRESS ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ kernel_object ; 
 scalar_t__ kmem_object ; 

void *
FUNC3(struct page *page)
{

	if (page->object != kmem_object && page->object != kernel_object) {
		return (PMAP_HAS_DMAP ?
		    ((void *)(uintptr_t)FUNC1(FUNC2(page))) :
		    NULL);
	}
	return ((void *)(uintptr_t)(VM_MIN_KERNEL_ADDRESS +
	    FUNC0(page->pindex)));
}