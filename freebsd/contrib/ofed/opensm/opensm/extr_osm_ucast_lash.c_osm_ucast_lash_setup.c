
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osm_routing_engine {int destroy; int path_sl; int ucast_build_fwd_tables; int * context; } ;
typedef int osm_opensm_t ;
typedef int lash_t ;


 int get_lash_sl ;
 int * lash_create (int *) ;
 int lash_delete ;
 int lash_process ;

int osm_ucast_lash_setup(struct osm_routing_engine *r, osm_opensm_t *p_osm)
{
 lash_t *p_lash = lash_create(p_osm);
 if (!p_lash)
  return -1;

 r->context = p_lash;
 r->ucast_build_fwd_tables = lash_process;
 r->path_sl = get_lash_sl;
 r->destroy = lash_delete;

 return 0;
}
