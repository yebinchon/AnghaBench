#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* p_subn; int /*<<< orphan*/  sweep_timer; } ;
typedef  TYPE_3__ osm_sm_t ;
struct TYPE_5__ {int sweep_interval; } ;
struct TYPE_6__ {scalar_t__ sm_state; TYPE_1__ opt; } ;

/* Variables and functions */
 scalar_t__ IB_SMINFO_STATE_DISCOVERING ; 
 scalar_t__ IB_SMINFO_STATE_MASTER ; 
 int /*<<< orphan*/  OSM_SIGNAL_SWEEP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void *arg)
{
	osm_sm_t *sm = arg;

	/*  do the sweep only if we are in MASTER state */
	if (sm->p_subn->sm_state == IB_SMINFO_STATE_MASTER ||
	    sm->p_subn->sm_state == IB_SMINFO_STATE_DISCOVERING)
		FUNC1(sm, OSM_SIGNAL_SWEEP);
	FUNC0(&sm->sweep_timer, sm->p_subn->opt.sweep_interval * 1000);
}