#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  base_lid; } ;
struct TYPE_7__ {TYPE_1__ port_info; } ;
typedef  TYPE_2__ osm_physp_t ;
typedef  int /*<<< orphan*/  osm_log_t ;
struct TYPE_8__ {int /*<<< orphan*/  base_lid; } ;
typedef  TYPE_3__ ib_port_info_t ;

/* Variables and functions */
 scalar_t__ IB_LID_UCAST_END_HO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  OSM_LOG_ERROR ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(osm_log_t * log, ib_port_info_t * pi,
				     osm_physp_t * p)
{
	if (FUNC1(FUNC2(pi->base_lid) > IB_LID_UCAST_END_HO)) {
		FUNC0(log, OSM_LOG_ERROR, "ERR 0F04: "
			"Got invalid base LID %u from the network. "
			"Corrected to %u\n", FUNC2(pi->base_lid),
			FUNC2(p->port_info.base_lid));
		pi->base_lid = p->port_info.base_lid;
	}
}