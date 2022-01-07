
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * p_osm; } ;
typedef TYPE_1__ updn_t ;
struct osm_routing_engine {int build_lid_matrices; int destroy; TYPE_1__* context; } ;
typedef int osm_opensm_t ;


 TYPE_1__* malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int updn_delete ;
 int updn_lid_matrices ;

int osm_ucast_updn_setup(struct osm_routing_engine *r, osm_opensm_t *osm)
{
 updn_t *updn;

 updn = malloc(sizeof(updn_t));
 if (!updn)
  return -1;
 memset(updn, 0, sizeof(updn_t));

 updn->p_osm = osm;

 r->context = updn;
 r->destroy = updn_delete;
 r->build_lid_matrices = updn_lid_matrices;

 return 0;
}
