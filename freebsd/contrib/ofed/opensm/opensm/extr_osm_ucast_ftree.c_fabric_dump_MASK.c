#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_11__ {scalar_t__ rank; int /*<<< orphan*/  map_item; } ;
typedef  TYPE_2__ ftree_sw_t ;
struct TYPE_12__ {int /*<<< orphan*/  map_item; } ;
typedef  TYPE_3__ ftree_hca_t ;
struct TYPE_13__ {scalar_t__ max_switch_rank; TYPE_1__* p_osm; int /*<<< orphan*/  sw_tbl; int /*<<< orphan*/  hca_tbl; } ;
typedef  TYPE_4__ ftree_fabric_t ;
struct TYPE_10__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  OSM_LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,TYPE_2__*) ; 

__attribute__((used)) static void FUNC7(ftree_fabric_t * p_ftree)
{
	uint32_t i;
	ftree_hca_t *p_hca;
	ftree_sw_t *p_sw;

	if (!FUNC1(&p_ftree->p_osm->log, OSM_LOG_DEBUG))
		return;

	FUNC0(&p_ftree->p_osm->log, OSM_LOG_DEBUG, "\n"
		"                       |-------------------------------|\n"
		"                       |-  Full fabric topology dump  -|\n"
		"                       |-------------------------------|\n\n");

	FUNC0(&p_ftree->p_osm->log, OSM_LOG_DEBUG, "-- CAs:\n");

	for (p_hca = (ftree_hca_t *) FUNC3(&p_ftree->hca_tbl);
	     p_hca != (ftree_hca_t *) FUNC2(&p_ftree->hca_tbl);
	     p_hca = (ftree_hca_t *) FUNC4(&p_hca->map_item)) {
		FUNC5(p_ftree, p_hca);
	}

	for (i = 0; i <= p_ftree->max_switch_rank; i++) {
		FUNC0(&p_ftree->p_osm->log, OSM_LOG_DEBUG,
			"-- Rank %u switches\n", i);
		for (p_sw = (ftree_sw_t *) FUNC3(&p_ftree->sw_tbl);
		     p_sw != (ftree_sw_t *) FUNC2(&p_ftree->sw_tbl);
		     p_sw = (ftree_sw_t *) FUNC4(&p_sw->map_item)) {
			if (p_sw->rank == i)
				FUNC6(p_ftree, p_sw);
		}
	}

	FUNC0(&p_ftree->p_osm->log, OSM_LOG_DEBUG, "\n"
		"                       |---------------------------------------|\n"
		"                       |- Full fabric topology dump completed -|\n"
		"                       |---------------------------------------|\n\n");
}