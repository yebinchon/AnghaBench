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
struct osm_routing_engine {int /*<<< orphan*/  build_lid_matrices; int /*<<< orphan*/  destroy; TYPE_2__* context; } ;
struct TYPE_6__ {int /*<<< orphan*/  log; } ;
typedef  TYPE_1__ osm_opensm_t ;
struct TYPE_7__ {TYPE_1__* p_osm; } ;
typedef  TYPE_2__ dnup_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dnup_delete ; 
 int /*<<< orphan*/  dnup_lid_matrices ; 
 TYPE_2__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

int FUNC4(struct osm_routing_engine *r, osm_opensm_t *osm)
{
	dnup_t *dnup;

	FUNC0(&osm->log);

	dnup = FUNC2(sizeof(dnup_t));
	if (!dnup)
		return -1;
	FUNC3(dnup, 0, sizeof(dnup_t));

	dnup->p_osm = osm;

	r->context = dnup;
	r->destroy = dnup_delete;
	r->build_lid_matrices = dnup_lid_matrices;

	FUNC1(&osm->log);
	return 0;
}