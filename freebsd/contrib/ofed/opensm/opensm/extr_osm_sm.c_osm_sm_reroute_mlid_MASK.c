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
struct TYPE_4__ {int* mlids_req; size_t mlids_req_max; int /*<<< orphan*/  p_log; } ;
typedef  TYPE_1__ osm_sm_t ;
typedef  size_t ib_net16_t ;

/* Variables and functions */
 size_t IB_LID_MCAST_START_HO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  OSM_LOG_DEBUG ; 
 int /*<<< orphan*/  OSM_SIGNAL_IDLE_TIME_PROCESS_REQUEST ; 
 size_t FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void FUNC3(osm_sm_t * sm, ib_net16_t mlid)
{
	mlid = FUNC1(mlid) - IB_LID_MCAST_START_HO;
	sm->mlids_req[mlid] = 1;
	if (sm->mlids_req_max < mlid)
		sm->mlids_req_max = mlid;
	FUNC2(sm, OSM_SIGNAL_IDLE_TIME_PROCESS_REQUEST);
	FUNC0(sm->p_log, OSM_LOG_DEBUG, "rerouting requested for MLID 0x%x\n",
		mlid + IB_LID_MCAST_START_HO);
}