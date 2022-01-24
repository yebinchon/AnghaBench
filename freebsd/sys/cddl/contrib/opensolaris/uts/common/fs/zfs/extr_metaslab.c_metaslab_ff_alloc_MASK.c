#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_5__ {int* ms_lbas; TYPE_1__* ms_allocatable; } ;
typedef  TYPE_2__ metaslab_t ;
typedef  int /*<<< orphan*/  avl_tree_t ;
struct TYPE_4__ {int /*<<< orphan*/  rt_root; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int*,int,int) ; 

__attribute__((used)) static uint64_t
FUNC2(metaslab_t *msp, uint64_t size)
{
	/*
	 * Find the largest power of 2 block size that evenly divides the
	 * requested size. This is used to try to allocate blocks with similar
	 * alignment from the same area of the metaslab (i.e. same cursor
	 * bucket) but it does not guarantee that other allocations sizes
	 * may exist in the same region.
	 */
	uint64_t align = size & -size;
	uint64_t *cursor = &msp->ms_lbas[FUNC0(align) - 1];
	avl_tree_t *t = &msp->ms_allocatable->rt_root;

	return (FUNC1(t, cursor, size, align));
}