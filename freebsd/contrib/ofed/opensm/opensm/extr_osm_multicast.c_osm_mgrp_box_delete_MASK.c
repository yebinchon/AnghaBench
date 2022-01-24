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
typedef  int /*<<< orphan*/  osm_mgrp_t ;
struct TYPE_4__ {int /*<<< orphan*/  mgrp_list; } ;
typedef  TYPE_1__ osm_mgrp_box_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  list_item ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(osm_mgrp_box_t *mbox)
{
	osm_mgrp_t *mgrp;

	while (FUNC1(&mbox->mgrp_list)) {
		mgrp = FUNC0(FUNC2(&mbox->mgrp_list),
				   mgrp, list_item);
		FUNC4(mgrp);
	}
	FUNC3(mbox);
}