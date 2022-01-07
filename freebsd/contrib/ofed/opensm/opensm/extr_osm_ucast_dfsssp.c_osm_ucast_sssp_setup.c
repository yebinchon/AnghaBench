
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osm_routing_engine {int destroy; int mcast_build_stree; int ucast_build_fwd_tables; int build_lid_matrices; void* context; } ;
typedef int osm_opensm_t ;
typedef int dfsssp_context_t ;


 int OSM_ROUTING_ENGINE_TYPE_SSSP ;
 int delete ;
 int dfsssp_build_graph ;
 int * dfsssp_context_create (int *,int ) ;
 int dfsssp_do_dijkstra_routing ;
 int dfsssp_do_mcast_routing ;

int osm_ucast_sssp_setup(struct osm_routing_engine *r, osm_opensm_t * p_osm)
{

 dfsssp_context_t *dfsssp_context =
     dfsssp_context_create(p_osm, OSM_ROUTING_ENGINE_TYPE_SSSP);
 if (!dfsssp_context) {
  return 1;
 }


 r->context = (void *)dfsssp_context;
 r->build_lid_matrices = dfsssp_build_graph;
 r->ucast_build_fwd_tables = dfsssp_do_dijkstra_routing;
 r->mcast_build_stree = dfsssp_do_mcast_routing;
 r->destroy = delete;

 return 0;
}
