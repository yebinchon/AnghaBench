#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_5__ {int /*<<< orphan*/  mgrp_list; int /*<<< orphan*/  mlid; } ;
typedef  TYPE_1__ osm_mgrp_box_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static osm_mgrp_box_t *FUNC3(uint16_t mlid)
{
	osm_mgrp_box_t *mbox = FUNC1(sizeof(*mbox));
	if (!mbox)
		return NULL;

	FUNC2(mbox, 0, sizeof(*mbox));
	mbox->mlid = mlid;
	FUNC0(&mbox->mgrp_list);

	return mbox;
}