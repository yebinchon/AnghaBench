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
struct opensm_dump_context {int /*<<< orphan*/ * file; TYPE_2__* p_osm; } ;
struct TYPE_6__ {int /*<<< orphan*/  sa_sr_list; int /*<<< orphan*/  sa_infr_list; int /*<<< orphan*/  mgrp_mgid_tbl; int /*<<< orphan*/  port_guid_tbl; } ;
struct TYPE_7__ {TYPE_1__ subn; int /*<<< orphan*/  log; } ;
typedef  TYPE_2__ osm_opensm_t ;
struct TYPE_8__ {int /*<<< orphan*/  map_item; } ;
typedef  TYPE_3__ osm_mgrp_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  OSM_LOG_DEBUG ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct opensm_dump_context*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct opensm_dump_context*) ; 
 int /*<<< orphan*/  sa_dump_one_inform ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,struct opensm_dump_context*) ; 
 int /*<<< orphan*/  sa_dump_one_port_guidinfo ; 
 int /*<<< orphan*/  sa_dump_one_service ; 

__attribute__((used)) static void FUNC7(osm_opensm_t * p_osm, FILE * file)
{
	struct opensm_dump_context dump_context;
	osm_mgrp_t *p_mgrp;

	dump_context.p_osm = p_osm;
	dump_context.file = file;
	FUNC0(&p_osm->log, OSM_LOG_DEBUG, "Dump guidinfo\n");
	FUNC5(&p_osm->subn.port_guid_tbl,
			   sa_dump_one_port_guidinfo, &dump_context);
	FUNC0(&p_osm->log, OSM_LOG_DEBUG, "Dump multicast\n");
	for (p_mgrp = (osm_mgrp_t *) FUNC2(&p_osm->subn.mgrp_mgid_tbl);
	     p_mgrp != (osm_mgrp_t *) FUNC1(&p_osm->subn.mgrp_mgid_tbl);
	     p_mgrp = (osm_mgrp_t *) FUNC3(&p_mgrp->map_item))
		FUNC6(p_mgrp, &dump_context);
	FUNC0(&p_osm->log, OSM_LOG_DEBUG, "Dump inform\n");
	FUNC4(&p_osm->subn.sa_infr_list,
			    sa_dump_one_inform, &dump_context);
	FUNC0(&p_osm->log, OSM_LOG_DEBUG, "Dump services\n");
	FUNC4(&p_osm->subn.sa_sr_list,
			    sa_dump_one_service, &dump_context);
}