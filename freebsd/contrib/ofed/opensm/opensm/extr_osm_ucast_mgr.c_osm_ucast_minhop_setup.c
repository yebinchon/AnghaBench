
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct osm_routing_engine {int ucast_build_fwd_tables; int build_lid_matrices; int * context; } ;
struct TYPE_4__ {int ucast_mgr; } ;
struct TYPE_5__ {TYPE_1__ sm; } ;
typedef TYPE_2__ osm_opensm_t ;


 int ucast_build_lfts ;
 int ucast_build_lid_matrices ;

int osm_ucast_minhop_setup(struct osm_routing_engine *r, osm_opensm_t * osm)
{
 r->context = &osm->sm.ucast_mgr;
 r->build_lid_matrices = ucast_build_lid_matrices;
 r->ucast_build_fwd_tables = ucast_build_lfts;
 return 0;
}
