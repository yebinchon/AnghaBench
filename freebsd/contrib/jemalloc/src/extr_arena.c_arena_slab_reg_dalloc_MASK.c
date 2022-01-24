#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t szind_t ;
typedef  int /*<<< orphan*/  extent_t ;
struct TYPE_5__ {scalar_t__ nregs; int /*<<< orphan*/  bitmap_info; } ;
typedef  TYPE_1__ bin_info_t ;
struct TYPE_6__ {int /*<<< orphan*/  bitmap; } ;
typedef  TYPE_2__ arena_slab_data_t ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *,size_t,void*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* bin_infos ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(extent_t *slab, arena_slab_data_t *slab_data, void *ptr) {
	szind_t binind = FUNC6(slab);
	const bin_info_t *bin_info = &bin_infos[binind];
	size_t regind = FUNC0(slab, binind, ptr);

	FUNC1(FUNC4(slab) < bin_info->nregs);
	/* Freeing an unallocated pointer can cause assertion failure. */
	FUNC1(FUNC2(slab_data->bitmap, &bin_info->bitmap_info, regind));

	FUNC3(slab_data->bitmap, &bin_info->bitmap_info, regind);
	FUNC5(slab);
}