
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int osm_subn_t ;
struct TYPE_10__ {int nmgrps; TYPE_2__** mgrps; } ;
typedef TYPE_1__ osm_prtn_t ;
struct TYPE_11__ {int well_known; } ;
typedef TYPE_2__ osm_mgrp_t ;
typedef int osm_log_t ;
typedef int ib_net16_t ;
struct TYPE_12__ {int raw; } ;
typedef TYPE_3__ ib_gid_t ;
typedef int ib_api_status_t ;


 int AF_INET6 ;
 int FALSE ;
 int IB_ERROR ;
 int IB_SUCCESS ;
 int INET6_ADDRSTRLEN ;
 int OSM_LOG (int *,int ,char*,int ,int ) ;
 int OSM_LOG_ERROR ;
 int TRUE ;
 int cl_ntoh16 (int ) ;
 int inet_ntop (int ,int ,char*,int) ;
 int osm_mgrp_cleanup (int *,TYPE_2__*) ;
 TYPE_2__** realloc (TYPE_2__**,int) ;

__attribute__((used)) static ib_api_status_t
track_mgrp_w_partition(osm_log_t *p_log, osm_prtn_t *p, osm_mgrp_t *mgrp,
   osm_subn_t *p_subn, const ib_gid_t *mgid,
   ib_net16_t pkey)
{
 char gid_str[INET6_ADDRSTRLEN];
 osm_mgrp_t **tmp;
 int i = 0;


 for (i = 0; i < p->nmgrps; i++)
  if (p->mgrps[i] == mgrp)
   return (IB_SUCCESS);


 tmp = realloc(p->mgrps, (p->nmgrps +1) * sizeof(*p->mgrps));
 if (tmp) {
  p->mgrps = tmp;
  p->mgrps[p->nmgrps] = mgrp;
  p->nmgrps++;
 } else {
  OSM_LOG(p_log, OSM_LOG_ERROR,
   "realloc error to create MC group (%s) in "
   "partition (pkey 0x%04x)\n",
   inet_ntop(AF_INET6, mgid->raw,
      gid_str, sizeof gid_str),
   cl_ntoh16(pkey));
  mgrp->well_known = FALSE;
  osm_mgrp_cleanup(p_subn, mgrp);
  return (IB_ERROR);
 }
 mgrp->well_known = TRUE;
 return (IB_SUCCESS);
}
