
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mgrp_mgid_tbl; } ;
typedef TYPE_1__ osm_subn_t ;
struct TYPE_5__ {int mlid; } ;
typedef TYPE_2__ osm_mgrp_t ;
typedef int ib_net16_t ;
typedef int ib_gid_t ;


 scalar_t__ cl_fmap_end (int *) ;
 scalar_t__ cl_fmap_match (int *,int *,int ) ;
 int compare_ipv6_snm_mgids ;

__attribute__((used)) static ib_net16_t find_ipv6_snm_mlid(osm_subn_t *subn, ib_gid_t *mgid)
{
 osm_mgrp_t *m = (osm_mgrp_t *)cl_fmap_match(&subn->mgrp_mgid_tbl, mgid,
          compare_ipv6_snm_mgids);
 if (m != (osm_mgrp_t *)cl_fmap_end(&subn->mgrp_mgid_tbl))
  return m->mlid;
 return 0;
}
