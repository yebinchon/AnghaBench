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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  ARC_BUFC_DATA ; 
 int /*<<< orphan*/  ARC_BUFC_METADATA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arc_mfu ; 
 int /*<<< orphan*/  arc_mfu_ghost ; 
 int /*<<< orphan*/  arc_mru ; 
 int /*<<< orphan*/  arc_mru_ghost ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(spa_t *spa, boolean_t retry)
{
	uint64_t guid = 0;

	/*
	 * If retry is B_TRUE, a spa must not be specified since we have
	 * no good way to determine if all of a spa's buffers have been
	 * evicted from an arc state.
	 */
	FUNC0(!retry || spa == 0);

	if (spa != NULL)
		guid = FUNC2(spa);

	(void) FUNC1(arc_mru, guid, ARC_BUFC_DATA, retry);
	(void) FUNC1(arc_mru, guid, ARC_BUFC_METADATA, retry);

	(void) FUNC1(arc_mfu, guid, ARC_BUFC_DATA, retry);
	(void) FUNC1(arc_mfu, guid, ARC_BUFC_METADATA, retry);

	(void) FUNC1(arc_mru_ghost, guid, ARC_BUFC_DATA, retry);
	(void) FUNC1(arc_mru_ghost, guid, ARC_BUFC_METADATA, retry);

	(void) FUNC1(arc_mfu_ghost, guid, ARC_BUFC_DATA, retry);
	(void) FUNC1(arc_mfu_ghost, guid, ARC_BUFC_METADATA, retry);
}