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
struct TYPE_4__ {int /*<<< orphan*/ * p_osm; } ;
typedef  TYPE_1__ updn_t ;
struct osm_routing_engine {int /*<<< orphan*/  build_lid_matrices; int /*<<< orphan*/  destroy; TYPE_1__* context; } ;
typedef  int /*<<< orphan*/  osm_opensm_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  updn_delete ; 
 int /*<<< orphan*/  updn_lid_matrices ; 

int FUNC2(struct osm_routing_engine *r, osm_opensm_t *osm)
{
	updn_t *updn;

	updn = FUNC0(sizeof(updn_t));
	if (!updn)
		return -1;
	FUNC1(updn, 0, sizeof(updn_t));

	updn->p_osm = osm;

	r->context = updn;
	r->destroy = updn_delete;
	r->build_lid_matrices = updn_lid_matrices;

	return 0;
}