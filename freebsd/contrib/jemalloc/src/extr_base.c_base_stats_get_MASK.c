#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
struct TYPE_3__ {size_t allocated; size_t resident; size_t mapped; size_t n_thp; int /*<<< orphan*/  mtx; } ;
typedef  TYPE_1__ base_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  config_stats ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC4(tsdn_t *tsdn, base_t *base, size_t *allocated, size_t *resident,
    size_t *mapped, size_t *n_thp) {
	FUNC1(config_stats);

	FUNC2(tsdn, &base->mtx);
	FUNC0(base->allocated <= base->resident);
	FUNC0(base->resident <= base->mapped);
	*allocated = base->allocated;
	*resident = base->resident;
	*mapped = base->mapped;
	*n_thp = base->n_thp;
	FUNC3(tsdn, &base->mtx);
}