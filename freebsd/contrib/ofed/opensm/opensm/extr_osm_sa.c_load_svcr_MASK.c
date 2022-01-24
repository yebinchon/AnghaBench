#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_8__ {int modified_time; int lease_period; } ;
typedef  TYPE_2__ osm_svcr_t ;
struct TYPE_7__ {int /*<<< orphan*/  sr_timer; } ;
struct TYPE_9__ {int /*<<< orphan*/  lock; TYPE_1__ sa; int /*<<< orphan*/  log; int /*<<< orphan*/  subn; } ;
typedef  TYPE_3__ osm_opensm_t ;
typedef  int /*<<< orphan*/  ib_service_record_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  OSM_LOG_DEBUG ; 
 int /*<<< orphan*/  OSM_LOG_ERROR ; 
 int /*<<< orphan*/  OSM_LOG_VERBOSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(osm_opensm_t * p_osm, ib_service_record_t * sr,
		     uint32_t modified_time, uint32_t lease_period)
{
	osm_svcr_t *p_svcr;
	int ret = 0;

	FUNC1(&p_osm->lock);

	if (FUNC4(&p_osm->subn, &p_osm->log, sr)) {
		FUNC0(&p_osm->log, OSM_LOG_VERBOSE,
			"ServiceRecord already exists\n");
		goto _out;
	}

	if (!(p_svcr = FUNC6(sr))) {
		FUNC0(&p_osm->log, OSM_LOG_ERROR,
			"cannot allocate new service struct\n");
		ret = -1;
		goto _out;
	}

	p_svcr->modified_time = modified_time;
	p_svcr->lease_period = lease_period;

	FUNC0(&p_osm->log, OSM_LOG_DEBUG, "adding ServiceRecord...\n");

	FUNC5(&p_osm->subn, &p_osm->log, p_svcr);

	if (lease_period != 0xffffffff)
		FUNC3(&p_osm->sa.sr_timer, 1000);

_out:
	FUNC2(&p_osm->lock);

	return ret;
}