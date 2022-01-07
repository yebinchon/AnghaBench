
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct qos_config {int * vlarb_high; int * vlarb_low; } ;
typedef int osm_sm_t ;
struct TYPE_6__ {unsigned int vl_arb_low_cap; unsigned int vl_arb_high_cap; } ;
struct TYPE_5__ {TYPE_2__ port_info; } ;
typedef TYPE_1__ osm_physp_t ;
typedef TYPE_2__ ib_port_info_t ;
typedef int ib_api_status_t ;
typedef int cl_qlist_t ;


 unsigned int IB_NUM_VL_ARB_ELEMENTS_IN_BLOCK ;
 int IB_SUCCESS ;
 int vlarb_update_table_block (int *,TYPE_1__*,int ,unsigned int,int *,unsigned int,int,int *) ;

__attribute__((used)) static ib_api_status_t vlarb_update(osm_sm_t * sm, osm_physp_t * p,
        uint8_t port_num, unsigned force_update,
        const struct qos_config *qcfg,
        cl_qlist_t *mad_list)
{
 ib_api_status_t status = IB_SUCCESS;
 ib_port_info_t *p_pi = &p->port_info;
 unsigned len;

 if (p_pi->vl_arb_low_cap > 0) {
  len = p_pi->vl_arb_low_cap < IB_NUM_VL_ARB_ELEMENTS_IN_BLOCK ?
      p_pi->vl_arb_low_cap : IB_NUM_VL_ARB_ELEMENTS_IN_BLOCK;
  if ((status = vlarb_update_table_block(sm, p, port_num,
             force_update,
             &qcfg->vlarb_low[0],
             len, 0,
             mad_list)) != IB_SUCCESS)
   return status;
 }
 if (p_pi->vl_arb_low_cap > IB_NUM_VL_ARB_ELEMENTS_IN_BLOCK) {
  len = p_pi->vl_arb_low_cap % IB_NUM_VL_ARB_ELEMENTS_IN_BLOCK;
  if ((status = vlarb_update_table_block(sm, p, port_num,
             force_update,
             &qcfg->vlarb_low[1],
             len, 1,
             mad_list)) != IB_SUCCESS)
   return status;
 }
 if (p_pi->vl_arb_high_cap > 0) {
  len = p_pi->vl_arb_high_cap < IB_NUM_VL_ARB_ELEMENTS_IN_BLOCK ?
      p_pi->vl_arb_high_cap : IB_NUM_VL_ARB_ELEMENTS_IN_BLOCK;
  if ((status = vlarb_update_table_block(sm, p, port_num,
             force_update,
             &qcfg->vlarb_high[0],
             len, 2,
             mad_list)) != IB_SUCCESS)
   return status;
 }
 if (p_pi->vl_arb_high_cap > IB_NUM_VL_ARB_ELEMENTS_IN_BLOCK) {
  len = p_pi->vl_arb_high_cap % IB_NUM_VL_ARB_ELEMENTS_IN_BLOCK;
  if ((status = vlarb_update_table_block(sm, p, port_num,
             force_update,
             &qcfg->vlarb_high[1],
             len, 3,
             mad_list)) != IB_SUCCESS)
   return status;
 }

 return status;
}
