#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ mft_block_num; scalar_t__ mft_position; int /*<<< orphan*/  map_item; } ;
typedef  TYPE_2__ osm_switch_t ;
struct TYPE_15__ {TYPE_1__* p_subn; } ;
typedef  TYPE_3__ osm_sm_t ;
struct TYPE_16__ {scalar_t__ max_position; } ;
typedef  TYPE_4__ osm_mcast_tbl_t ;
typedef  scalar_t__ int16_t ;
typedef  int /*<<< orphan*/  cl_qmap_t ;
struct TYPE_13__ {int /*<<< orphan*/  sw_guid_tbl; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_3__*,TYPE_2__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_4__*) ; 
 TYPE_4__* FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC7(osm_sm_t * sm)
{
	cl_qmap_t *p_sw_tbl = &sm->p_subn->sw_guid_tbl;
	osm_switch_t *p_sw;
	osm_mcast_tbl_t *p_tbl;
	int block_notdone, ret = 0;
	int16_t block_num, max_block = -1;

	p_sw = (osm_switch_t *) FUNC1(p_sw_tbl);
	while (p_sw != (osm_switch_t *) FUNC0(p_sw_tbl)) {
		p_sw->mft_block_num = 0;
		p_sw->mft_position = 0;
		p_tbl = FUNC6(p_sw);
		if (FUNC5(p_tbl) > max_block)
			max_block = FUNC5(p_tbl);
		FUNC4(sm, p_sw);
		p_sw = (osm_switch_t *) FUNC2(&p_sw->map_item);
	}

	/* Stripe the MFT blocks across the switches */
	for (block_num = 0; block_num <= max_block; block_num++) {
		block_notdone = 1;
		while (block_notdone) {
			block_notdone = 0;
			p_sw = (osm_switch_t *) FUNC1(p_sw_tbl);
			while (p_sw != (osm_switch_t *) FUNC0(p_sw_tbl)) {
				if (p_sw->mft_block_num == block_num) {
					block_notdone = 1;
					if (FUNC3(sm, p_sw,
								    p_sw->mft_block_num,
								    p_sw->mft_position))
						ret = -1;
					p_tbl = FUNC6(p_sw);
					if (++p_sw->mft_position > p_tbl->max_position) {
						p_sw->mft_position = 0;
						p_sw->mft_block_num++;
					}
				}
				p_sw = (osm_switch_t *) FUNC2(&p_sw->map_item);
			}
		}
	}

	return ret;
}