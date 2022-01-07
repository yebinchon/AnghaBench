
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct torus_context {int dummy; } ;
struct osm_routing_engine {int destroy; int mcast_build_stree; int path_sl; int update_vlarb; int update_sl2vl; int build_lid_matrices; int ucast_build_fwd_tables; struct torus_context* context; } ;
typedef int osm_opensm_t ;


 int torus_build_lfts ;
 struct torus_context* torus_context_create (int *) ;
 int torus_context_delete ;
 int torus_mcast_stree ;
 int torus_path_sl ;
 int torus_update_osm_sl2vl ;
 int torus_update_osm_vlarb ;
 int ucast_dummy_build_lid_matrices ;

int osm_ucast_torus2QoS_setup(struct osm_routing_engine *r,
         osm_opensm_t *osm)
{
 struct torus_context *ctx;

 ctx = torus_context_create(osm);
 if (!ctx)
  return -1;

 r->context = ctx;
 r->ucast_build_fwd_tables = torus_build_lfts;
 r->build_lid_matrices = ucast_dummy_build_lid_matrices;
 r->update_sl2vl = torus_update_osm_sl2vl;
 r->update_vlarb = torus_update_osm_vlarb;
 r->path_sl = torus_path_sl;
 r->mcast_build_stree = torus_mcast_stree;
 r->destroy = torus_context_delete;
 return 0;
}
