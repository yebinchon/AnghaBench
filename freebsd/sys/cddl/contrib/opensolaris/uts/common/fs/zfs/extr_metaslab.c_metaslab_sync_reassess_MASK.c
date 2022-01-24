#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  spa_t ;
struct TYPE_8__ {scalar_t__ mg_activation_count; int /*<<< orphan*/  mg_fragmentation; TYPE_1__* mg_class; } ;
typedef  TYPE_2__ metaslab_group_t ;
struct TYPE_7__ {int /*<<< orphan*/ * mc_spa; } ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  SCL_ALLOC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC5(metaslab_group_t *mg)
{
	spa_t *spa = mg->mg_class->mc_spa;

	FUNC3(spa, SCL_ALLOC, FTAG, RW_READER);
	FUNC0(mg);
	mg->mg_fragmentation = FUNC1(mg);

	/*
	 * Preload the next potential metaslabs but only on active
	 * metaslab groups. We can get into a state where the metaslab
	 * is no longer active since we dirty metaslabs as we remove a
	 * a device, thus potentially making the metaslab group eligible
	 * for preloading.
	 */
	if (mg->mg_activation_count > 0) {
		FUNC2(mg);
	}
	FUNC4(spa, SCL_ALLOC, FTAG);
}