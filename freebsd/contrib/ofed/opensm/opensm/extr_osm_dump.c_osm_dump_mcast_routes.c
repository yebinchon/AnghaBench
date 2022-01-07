
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int sw_guid_tbl; } ;
struct TYPE_7__ {TYPE_1__ subn; int log; } ;
typedef TYPE_2__ osm_opensm_t ;


 scalar_t__ OSM_LOG_IS_ACTIVE_V2 (int *,int ) ;
 int OSM_LOG_ROUTING ;
 int dump_mcast_routes ;
 int osm_dump_qmap_to_file (TYPE_2__*,char*,int *,int ,TYPE_2__*) ;

void osm_dump_mcast_routes(osm_opensm_t * osm)
{
 if (OSM_LOG_IS_ACTIVE_V2(&osm->log, OSM_LOG_ROUTING))

  osm_dump_qmap_to_file(osm, "opensm.mcfdbs",
          &osm->subn.sw_guid_tbl,
          dump_mcast_routes, osm);
}
