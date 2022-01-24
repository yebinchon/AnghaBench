#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  map_item; } ;
typedef  TYPE_2__ osm_switch_t ;
struct TYPE_10__ {int /*<<< orphan*/  sw_guid_tbl; } ;
typedef  TYPE_3__ osm_subn_t ;
struct TYPE_11__ {TYPE_1__* p_osm; } ;
typedef  TYPE_4__ lash_t ;
struct TYPE_8__ {TYPE_3__ subn; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_2__*) ; 

__attribute__((used)) static void FUNC4(lash_t * p_lash)
{
	osm_switch_t *p_sw, *p_next_sw;
	osm_subn_t *p_subn = &p_lash->p_osm->subn;

	/* Go through each switch and process it. i.e build the connection
	   structure required by LASH */
	p_next_sw = (osm_switch_t *) FUNC1(&p_subn->sw_guid_tbl);
	while (p_next_sw != (osm_switch_t *) FUNC0(&p_subn->sw_guid_tbl)) {
		p_sw = p_next_sw;
		p_next_sw = (osm_switch_t *) FUNC2(&p_sw->map_item);

		FUNC3(p_lash, p_sw);
	}
}