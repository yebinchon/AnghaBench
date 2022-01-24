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
struct TYPE_6__ {int /*<<< orphan*/  sw_guid_tbl; } ;
struct TYPE_7__ {TYPE_1__ subn; int /*<<< orphan*/  log; } ;
typedef  TYPE_2__ osm_opensm_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSM_LOG_ROUTING ; 
 int /*<<< orphan*/  dump_mcast_routes ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 

void FUNC2(osm_opensm_t * osm)
{
	if (FUNC0(&osm->log, OSM_LOG_ROUTING))
		/* multicast routes */
		FUNC1(osm, "opensm.mcfdbs",
				      &osm->subn.sw_guid_tbl,
				      dump_mcast_routes, osm);
}