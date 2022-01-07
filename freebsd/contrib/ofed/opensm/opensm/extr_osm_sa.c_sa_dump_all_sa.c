
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct opensm_dump_context {int * file; TYPE_2__* p_osm; } ;
struct TYPE_6__ {int sa_sr_list; int sa_infr_list; int mgrp_mgid_tbl; int port_guid_tbl; } ;
struct TYPE_7__ {TYPE_1__ subn; int log; } ;
typedef TYPE_2__ osm_opensm_t ;
struct TYPE_8__ {int map_item; } ;
typedef TYPE_3__ osm_mgrp_t ;
typedef int FILE ;


 int OSM_LOG (int *,int ,char*) ;
 int OSM_LOG_DEBUG ;
 scalar_t__ cl_fmap_end (int *) ;
 scalar_t__ cl_fmap_head (int *) ;
 scalar_t__ cl_fmap_next (int *) ;
 int cl_qlist_apply_func (int *,int ,struct opensm_dump_context*) ;
 int cl_qmap_apply_func (int *,int ,struct opensm_dump_context*) ;
 int sa_dump_one_inform ;
 int sa_dump_one_mgrp (TYPE_3__*,struct opensm_dump_context*) ;
 int sa_dump_one_port_guidinfo ;
 int sa_dump_one_service ;

__attribute__((used)) static void sa_dump_all_sa(osm_opensm_t * p_osm, FILE * file)
{
 struct opensm_dump_context dump_context;
 osm_mgrp_t *p_mgrp;

 dump_context.p_osm = p_osm;
 dump_context.file = file;
 OSM_LOG(&p_osm->log, OSM_LOG_DEBUG, "Dump guidinfo\n");
 cl_qmap_apply_func(&p_osm->subn.port_guid_tbl,
      sa_dump_one_port_guidinfo, &dump_context);
 OSM_LOG(&p_osm->log, OSM_LOG_DEBUG, "Dump multicast\n");
 for (p_mgrp = (osm_mgrp_t *) cl_fmap_head(&p_osm->subn.mgrp_mgid_tbl);
      p_mgrp != (osm_mgrp_t *) cl_fmap_end(&p_osm->subn.mgrp_mgid_tbl);
      p_mgrp = (osm_mgrp_t *) cl_fmap_next(&p_mgrp->map_item))
  sa_dump_one_mgrp(p_mgrp, &dump_context);
 OSM_LOG(&p_osm->log, OSM_LOG_DEBUG, "Dump inform\n");
 cl_qlist_apply_func(&p_osm->subn.sa_infr_list,
       sa_dump_one_inform, &dump_context);
 OSM_LOG(&p_osm->log, OSM_LOG_DEBUG, "Dump services\n");
 cl_qlist_apply_func(&p_osm->subn.sa_sr_list,
       sa_dump_one_service, &dump_context);
}
