
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vltable_t ;
typedef int uint8_t ;
struct TYPE_3__ {int p_subn; } ;
typedef TYPE_1__ osm_ucast_mgr_t ;
typedef int osm_port_t ;
typedef int int32_t ;
typedef int ib_net16_t ;
struct TYPE_4__ {scalar_t__ routing_type; scalar_t__ vl_split_count; scalar_t__ srcdest2vl_table; scalar_t__ p_mgr; } ;
typedef TYPE_2__ dfsssp_context_t ;


 scalar_t__ OSM_ROUTING_ENGINE_TYPE_DFSSSP ;
 int * osm_get_port_by_lid (int ,int const) ;
 int rand () ;
 int vltable_get_vl (int *,int const,int const) ;

__attribute__((used)) static uint8_t get_dfsssp_sl(void *context, uint8_t hint_for_default_sl,
        const ib_net16_t slid, const ib_net16_t dlid)
{
 dfsssp_context_t *dfsssp_ctx = (dfsssp_context_t *) context;
 osm_port_t *src_port, *dest_port;
 vltable_t *srcdest2vl_table = ((void*)0);
 uint8_t *vl_split_count = ((void*)0);
 osm_ucast_mgr_t *p_mgr = ((void*)0);
 int32_t res = 0;

 if (dfsssp_ctx
     && dfsssp_ctx->routing_type == OSM_ROUTING_ENGINE_TYPE_DFSSSP) {
  p_mgr = (osm_ucast_mgr_t *) dfsssp_ctx->p_mgr;
  srcdest2vl_table = (vltable_t *) (dfsssp_ctx->srcdest2vl_table);
  vl_split_count = (uint8_t *) (dfsssp_ctx->vl_split_count);
 }
 else
  return hint_for_default_sl;

 src_port = osm_get_port_by_lid(p_mgr->p_subn, slid);
 if (!src_port)
  return hint_for_default_sl;

 dest_port = osm_get_port_by_lid(p_mgr->p_subn, dlid);
 if (!dest_port)
  return hint_for_default_sl;

 if (!srcdest2vl_table)
  return hint_for_default_sl;

 res = vltable_get_vl(srcdest2vl_table, slid, dlid);





 if (res > -1) {
  if (vl_split_count[res] > 1)
   return (uint8_t) (res + rand()%(vl_split_count[res]));
  else
   return (uint8_t) res;
 } else
  return hint_for_default_sl;
}
