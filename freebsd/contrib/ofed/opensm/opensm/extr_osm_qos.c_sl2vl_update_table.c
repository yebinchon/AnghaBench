
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int tbl ;
struct TYPE_13__ {int list_item; } ;
typedef TYPE_1__ qos_mad_item_t ;
typedef int osm_sm_t ;
struct TYPE_14__ {int port_info; } ;
typedef TYPE_2__ osm_physp_t ;
struct TYPE_15__ {int* raw_vl_by_sl; } ;
typedef TYPE_3__ ib_slvl_table_t ;
typedef int ib_api_status_t ;
typedef int cl_qlist_t ;


 int IB_INSUFFICIENT_MEMORY ;
 int IB_MAD_ATTR_SLVL_TABLE ;
 int IB_MAX_NUM_VLS ;
 int IB_SUCCESS ;
 int cl_qlist_insert_tail (int *,int *) ;
 int ib_port_info_get_op_vls (int *) ;
 int memcmp (TYPE_3__*,TYPE_3__*,int) ;
 int memset (TYPE_3__*,int ,int) ;
 TYPE_3__* osm_physp_get_slvl_tbl (TYPE_2__*,int) ;
 TYPE_1__* osm_qos_mad_create (int *,TYPE_2__*,int,int*,int ,int ) ;

__attribute__((used)) static ib_api_status_t sl2vl_update_table(osm_sm_t * sm, osm_physp_t * p,
       uint8_t in_port, uint32_t attr_mod,
       unsigned force_update,
       const ib_slvl_table_t * sl2vl_table,
       cl_qlist_t *mad_list)
{
 ib_slvl_table_t tbl, *p_tbl;
 unsigned vl_mask;
 uint8_t vl1, vl2;
 int i;
 qos_mad_item_t *p_mad;

 vl_mask = (1 << (ib_port_info_get_op_vls(&p->port_info) - 1)) - 1;

 for (i = 0; i < IB_MAX_NUM_VLS / 2; i++) {
  vl1 = sl2vl_table->raw_vl_by_sl[i] >> 4;
  vl2 = sl2vl_table->raw_vl_by_sl[i] & 0xf;
  if (vl1 != 15)
   vl1 &= vl_mask;
  if (vl2 != 15)
   vl2 &= vl_mask;
  tbl.raw_vl_by_sl[i] = (vl1 << 4) | vl2;
 }

 p_tbl = osm_physp_get_slvl_tbl(p, in_port);

 if (!force_update && !memcmp(p_tbl, &tbl, sizeof(tbl)))
  return IB_SUCCESS;

 p_mad = osm_qos_mad_create(sm, p, sizeof(tbl), (uint8_t *) & tbl,
       IB_MAD_ATTR_SLVL_TABLE, attr_mod);
 if (!p_mad)
  return IB_INSUFFICIENT_MEMORY;





 memset(p_tbl, 0, sizeof(tbl));

 cl_qlist_insert_tail(mad_list, &p_mad->list_item);
 return IB_SUCCESS;
}
