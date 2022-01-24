#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct osm_routing_engine {int (* build_lid_matrices ) (int /*<<< orphan*/ ) ;int (* ucast_build_fwd_tables ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  name; int /*<<< orphan*/  context; } ;
struct TYPE_8__ {int /*<<< orphan*/  ucast_mgr; } ;
struct TYPE_6__ {scalar_t__ scatter_ports; } ;
struct TYPE_7__ {TYPE_1__ opt; } ;
struct TYPE_9__ {TYPE_3__ sm; struct osm_routing_engine* routing_engine_used; int /*<<< orphan*/  log; TYPE_2__ subn; } ;
typedef  TYPE_4__ osm_opensm_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSM_LOG_ERROR ; 
 int /*<<< orphan*/  OSM_LOG_VERBOSE ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct osm_routing_engine *r, osm_opensm_t * osm)
{
	int ret;

	FUNC0(&osm->log, OSM_LOG_VERBOSE,
		"building routing with \'%s\' routing algorithm...\n", r->name);

	/* Set the before each lft build to keep the routes in place between sweeps */
	if (osm->subn.opt.scatter_ports)
		FUNC3(osm->subn.opt.scatter_ports);

	if (!r->build_lid_matrices ||
	    (ret = r->build_lid_matrices(r->context)) > 0)
		ret = FUNC1(&osm->sm.ucast_mgr);

	if (ret < 0) {
		FUNC0(&osm->log, OSM_LOG_ERROR,
			"%s: cannot build lid matrices\n", r->name);
		return ret;
	}

	if (!r->ucast_build_fwd_tables ||
	    (ret = r->ucast_build_fwd_tables(r->context)) > 0)
		ret = FUNC6(&osm->sm.ucast_mgr);

	if (ret < 0) {
		FUNC0(&osm->log, OSM_LOG_ERROR,
			"%s: cannot build fwd tables\n", r->name);
		return ret;
	}

	osm->routing_engine_used = r;

	FUNC2(&osm->sm.ucast_mgr);

	return 0;
}