#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_7__ ;
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
struct osm_routing_engine {int /*<<< orphan*/  context; int /*<<< orphan*/  (* update_vlarb ) (int /*<<< orphan*/ ,TYPE_6__*,int,TYPE_7__*,unsigned int,unsigned int) ;} ;
struct TYPE_24__ {int /*<<< orphan*/  list_item; } ;
typedef  TYPE_4__ qos_mad_item_t ;
struct TYPE_25__ {TYPE_2__* p_subn; } ;
typedef  TYPE_5__ osm_sm_t ;
struct TYPE_26__ {TYPE_7__* vl_arb; int /*<<< orphan*/  port_info; } ;
typedef  TYPE_6__ osm_physp_t ;
struct TYPE_27__ {TYPE_3__* vl_entry; } ;
typedef  TYPE_7__ ib_vl_arb_table_t ;
typedef  int /*<<< orphan*/  ib_api_status_t ;
typedef  int /*<<< orphan*/  cl_qlist_t ;
typedef  int /*<<< orphan*/  block ;
struct TYPE_23__ {unsigned int vl; } ;
struct TYPE_22__ {TYPE_1__* p_osm; } ;
struct TYPE_21__ {struct osm_routing_engine* routing_engine_used; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_INSUFFICIENT_MEMORY ; 
 int /*<<< orphan*/  IB_MAD_ATTR_VL_ARBITRATION ; 
 int /*<<< orphan*/  IB_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*,TYPE_7__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,TYPE_7__ const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*,int /*<<< orphan*/ ,unsigned int) ; 
 TYPE_4__* FUNC5 (TYPE_5__*,TYPE_6__*,int,int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_6__*,int,TYPE_7__*,unsigned int,unsigned int) ; 

__attribute__((used)) static ib_api_status_t FUNC7(osm_sm_t * sm,
						osm_physp_t * p,
						uint8_t port_num,
						unsigned force_update,
						const ib_vl_arb_table_t *
						table_block,
						unsigned block_length,
						unsigned block_num,
						cl_qlist_t *mad_list)
{
	struct osm_routing_engine *re = sm->p_subn->p_osm->routing_engine_used;
	ib_vl_arb_table_t block;
	uint32_t attr_mod;
	unsigned vl_mask, i;
	qos_mad_item_t *p_mad;
	vl_mask = (1 << (FUNC1(&p->port_info) - 1)) - 1;

	FUNC4(&block, 0, sizeof(block));
	FUNC3(&block, table_block, block_length * sizeof(block.vl_entry[0]));

	if (re && re->update_vlarb)
		re->update_vlarb(re->context, p, port_num, &block,
				 block_length, block_num);

	for (i = 0; i < block_length; i++)
		block.vl_entry[i].vl &= vl_mask;

	if (!force_update &&
	    !FUNC2(&p->vl_arb[block_num], &block,
		    block_length * sizeof(block.vl_entry[0])))
		return IB_SUCCESS;

	attr_mod = ((block_num + 1) << 16) | port_num;

	p_mad = FUNC5(sm,p,sizeof(block),(uint8_t *) & block,
				   IB_MAD_ATTR_VL_ARBITRATION, attr_mod);

	if (!p_mad)
		return IB_INSUFFICIENT_MEMORY;

	/*
	 * Zero the stored VL Arbitration block, so in case the MAD will
	 * end up with error, we will resend it in the next sweep.
	 */
	FUNC4(&p->vl_arb[block_num], 0,
	       block_length * sizeof(block.vl_entry[0]));

	FUNC0(mad_list, &p_mad->list_item);

	return IB_SUCCESS;
}