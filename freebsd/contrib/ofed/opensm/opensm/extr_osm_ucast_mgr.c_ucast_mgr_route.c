
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct osm_routing_engine {int (* build_lid_matrices ) (int ) ;int (* ucast_build_fwd_tables ) (int ) ;int name; int context; } ;
struct TYPE_8__ {int ucast_mgr; } ;
struct TYPE_6__ {scalar_t__ scatter_ports; } ;
struct TYPE_7__ {TYPE_1__ opt; } ;
struct TYPE_9__ {TYPE_3__ sm; struct osm_routing_engine* routing_engine_used; int log; TYPE_2__ subn; } ;
typedef TYPE_4__ osm_opensm_t ;


 int OSM_LOG (int *,int ,char*,int ) ;
 int OSM_LOG_ERROR ;
 int OSM_LOG_VERBOSE ;
 int osm_ucast_mgr_build_lid_matrices (int *) ;
 int osm_ucast_mgr_set_fwd_tables (int *) ;
 int srandom (scalar_t__) ;
 int stub1 (int ) ;
 int stub2 (int ) ;
 int ucast_mgr_build_lfts (int *) ;

__attribute__((used)) static int ucast_mgr_route(struct osm_routing_engine *r, osm_opensm_t * osm)
{
 int ret;

 OSM_LOG(&osm->log, OSM_LOG_VERBOSE,
  "building routing with \'%s\' routing algorithm...\n", r->name);


 if (osm->subn.opt.scatter_ports)
  srandom(osm->subn.opt.scatter_ports);

 if (!r->build_lid_matrices ||
     (ret = r->build_lid_matrices(r->context)) > 0)
  ret = osm_ucast_mgr_build_lid_matrices(&osm->sm.ucast_mgr);

 if (ret < 0) {
  OSM_LOG(&osm->log, OSM_LOG_ERROR,
   "%s: cannot build lid matrices\n", r->name);
  return ret;
 }

 if (!r->ucast_build_fwd_tables ||
     (ret = r->ucast_build_fwd_tables(r->context)) > 0)
  ret = ucast_mgr_build_lfts(&osm->sm.ucast_mgr);

 if (ret < 0) {
  OSM_LOG(&osm->log, OSM_LOG_ERROR,
   "%s: cannot build fwd tables\n", r->name);
  return ret;
 }

 osm->routing_engine_used = r;

 osm_ucast_mgr_set_fwd_tables(&osm->sm.ucast_mgr);

 return 0;
}
