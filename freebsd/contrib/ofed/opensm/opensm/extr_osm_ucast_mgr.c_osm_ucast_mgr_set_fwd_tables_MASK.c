#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* p_subn; scalar_t__ max_lid; } ;
typedef  TYPE_2__ osm_ucast_mgr_t ;
struct TYPE_6__ {int /*<<< orphan*/  sw_guid_tbl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  ucast_mgr_set_fwd_top ; 

void FUNC2(osm_ucast_mgr_t * p_mgr)
{
	p_mgr->max_lid = 0;

	FUNC0(&p_mgr->p_subn->sw_guid_tbl, ucast_mgr_set_fwd_top,
			   p_mgr);

	FUNC1(p_mgr);
}