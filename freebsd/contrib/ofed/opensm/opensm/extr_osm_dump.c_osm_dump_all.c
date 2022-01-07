
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ qos; scalar_t__ scatter_ports; } ;
struct TYPE_12__ {int node_guid_tbl; int port_guid_tbl; TYPE_1__ opt; int sw_guid_tbl; } ;
struct TYPE_13__ {int log; TYPE_3__ subn; TYPE_2__* routing_engine_used; } ;
typedef TYPE_4__ osm_opensm_t ;
struct TYPE_11__ {scalar_t__ update_sl2vl; } ;


 int OSM_LOG_DEBUG ;
 scalar_t__ OSM_LOG_IS_ACTIVE_V2 (int *,int ) ;
 int OSM_LOG_ROUTING ;
 int OSM_LOG_VERBOSE ;
 int dump_lid_matrix ;
 int dump_mcast_routes ;
 int dump_qmap (int ,int *,int ,TYPE_4__*) ;
 int dump_sl2vl_tbl ;
 int dump_topology_node ;
 int dump_ucast_lfts ;
 int dump_ucast_path_distribution ;
 int dump_ucast_routes ;
 int osm_dump_qmap_to_file (TYPE_4__*,char*,int *,int ,TYPE_4__*) ;
 int print_report (TYPE_4__*,int ) ;
 int srandom (scalar_t__) ;
 int stdout ;

void osm_dump_all(osm_opensm_t * osm)
{
 if (OSM_LOG_IS_ACTIVE_V2(&osm->log, OSM_LOG_ROUTING)) {

  osm_dump_qmap_to_file(osm, "opensm-lid-matrix.dump",
          &osm->subn.sw_guid_tbl, dump_lid_matrix,
          osm);
  osm_dump_qmap_to_file(osm, "opensm-lfts.dump",
          &osm->subn.sw_guid_tbl, dump_ucast_lfts,
          osm);
  if (OSM_LOG_IS_ACTIVE_V2(&osm->log, OSM_LOG_DEBUG))
   dump_qmap(stdout, &osm->subn.sw_guid_tbl,
      dump_ucast_path_distribution, osm);



  if (osm->subn.opt.scatter_ports)
   srandom(osm->subn.opt.scatter_ports);

  osm_dump_qmap_to_file(osm, "opensm.fdbs",
          &osm->subn.sw_guid_tbl,
          dump_ucast_routes, osm);

  osm_dump_qmap_to_file(osm, "opensm.mcfdbs",
          &osm->subn.sw_guid_tbl,
          dump_mcast_routes, osm);

  if (osm->subn.opt.qos ||
      (osm->routing_engine_used &&
       osm->routing_engine_used->update_sl2vl))
   osm_dump_qmap_to_file(osm, "opensm-sl2vl.dump",
           &osm->subn.port_guid_tbl,
           dump_sl2vl_tbl, osm);
 }
 osm_dump_qmap_to_file(osm, "opensm-subnet.lst",
         &osm->subn.node_guid_tbl, dump_topology_node,
         osm);
 if (OSM_LOG_IS_ACTIVE_V2(&osm->log, OSM_LOG_VERBOSE))
  print_report(osm, stdout);
}
