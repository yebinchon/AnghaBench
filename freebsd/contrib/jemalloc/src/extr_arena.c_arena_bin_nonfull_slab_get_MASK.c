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
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  size_t szind_t ;
typedef  int /*<<< orphan*/  extent_t ;
struct TYPE_5__ {int /*<<< orphan*/  curslabs; int /*<<< orphan*/  nslabs; } ;
struct TYPE_6__ {TYPE_1__ stats; int /*<<< orphan*/  lock; } ;
typedef  TYPE_2__ bin_t ;
typedef  int /*<<< orphan*/  bin_info_t ;
typedef  int /*<<< orphan*/  arena_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * bin_infos ; 
 scalar_t__ config_stats ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static extent_t *
FUNC4(tsdn_t *tsdn, arena_t *arena, bin_t *bin,
    szind_t binind) {
	extent_t *slab;
	const bin_info_t *bin_info;

	/* Look for a usable slab. */
	slab = FUNC0(bin);
	if (slab != NULL) {
		return slab;
	}
	/* No existing slabs have any space available. */

	bin_info = &bin_infos[binind];

	/* Allocate a new slab. */
	FUNC3(tsdn, &bin->lock);
	/******************************/
	slab = FUNC1(tsdn, arena, binind, bin_info);
	/********************************/
	FUNC2(tsdn, &bin->lock);
	if (slab != NULL) {
		if (config_stats) {
			bin->stats.nslabs++;
			bin->stats.curslabs++;
		}
		return slab;
	}

	/*
	 * arena_slab_alloc() failed, but another thread may have made
	 * sufficient memory available while this one dropped bin->lock above,
	 * so search one more time.
	 */
	slab = FUNC0(bin);
	if (slab != NULL) {
		return slab;
	}

	return NULL;
}