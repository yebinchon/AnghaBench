
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int sm_port_guid; } ;
typedef TYPE_1__ osm_subn_t ;
struct TYPE_13__ {int part_guid_tbl; } ;
typedef TYPE_2__ osm_prtn_t ;
typedef int osm_log_t ;
typedef scalar_t__ ib_api_status_t ;
typedef int boolean_t ;


 int FALSE ;
 int IB_DEFAULT_PARTIAL_PKEY ;
 scalar_t__ IB_SUCCESS ;
 scalar_t__ IB_UNKNOWN_ERROR ;
 int OSM_DEFAULT_MGRP_MTU ;
 int OSM_DEFAULT_MGRP_RATE ;
 int OSM_DEFAULT_SL ;
 int OSM_IPOIB_BROADCAST_MGRP_QKEY ;
 int TRUE ;
 int cl_map_remove (int *,int ) ;
 int osm_ipoib_broadcast_mgid ;
 scalar_t__ osm_prtn_add_all (int *,TYPE_1__*,TYPE_2__*,int ,int ,int ) ;
 int osm_prtn_add_mcgroup (int *,TYPE_1__*,TYPE_2__*,int ,int ,int ,int ,int ,int ,int ,int *) ;
 scalar_t__ osm_prtn_add_port (int *,TYPE_1__*,TYPE_2__*,int ,int ,int ) ;
 TYPE_2__* osm_prtn_make_new (int *,TYPE_1__*,char*,int ) ;

__attribute__((used)) static ib_api_status_t prtn_make_default(osm_log_t * p_log, osm_subn_t * p_subn,
      boolean_t no_config)
{
 ib_api_status_t status = IB_UNKNOWN_ERROR;
 osm_prtn_t *p;

 p = osm_prtn_make_new(p_log, p_subn, "Default",
         IB_DEFAULT_PARTIAL_PKEY);
 if (!p)
  goto _err;
 status = osm_prtn_add_all(p_log, p_subn, p, 0, no_config, FALSE);
 if (status != IB_SUCCESS)
  goto _err;
 cl_map_remove(&p->part_guid_tbl, p_subn->sm_port_guid);
 status =
     osm_prtn_add_port(p_log, p_subn, p, p_subn->sm_port_guid, TRUE, FALSE);


 if (no_config)
  osm_prtn_add_mcgroup(p_log, p_subn, p, OSM_DEFAULT_MGRP_RATE,
         OSM_DEFAULT_MGRP_MTU, OSM_DEFAULT_SL,
         0, OSM_IPOIB_BROADCAST_MGRP_QKEY, 0, 0,
         &osm_ipoib_broadcast_mgid);

_err:
 return status;
}
