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
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  extent_t ;
struct TYPE_4__ {int /*<<< orphan*/  curslabs; } ;
struct TYPE_5__ {TYPE_1__ stats; int /*<<< orphan*/  lock; int /*<<< orphan*/ * slabcur; } ;
typedef  TYPE_2__ bin_t ;
typedef  int /*<<< orphan*/  arena_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ config_stats ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(tsdn_t *tsdn, arena_t *arena, extent_t *slab,
    bin_t *bin) {
	FUNC1(slab != bin->slabcur);

	FUNC3(tsdn, &bin->lock);
	/******************************/
	FUNC0(tsdn, arena, slab);
	/****************************/
	FUNC2(tsdn, &bin->lock);
	if (config_stats) {
		bin->stats.curslabs--;
	}
}