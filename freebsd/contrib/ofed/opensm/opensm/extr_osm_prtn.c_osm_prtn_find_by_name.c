
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int prtn_pkey_tbl; } ;
typedef TYPE_1__ osm_subn_t ;
struct TYPE_6__ {int name; int map_item; } ;
typedef TYPE_2__ osm_prtn_t ;
typedef int cl_map_item_t ;


 int * cl_qmap_end (int *) ;
 int * cl_qmap_head (int *) ;
 int * cl_qmap_next (int *) ;
 int strncmp (int ,char const*,int) ;

osm_prtn_t *osm_prtn_find_by_name(osm_subn_t * p_subn, const char *name)
{
 cl_map_item_t *p_next;
 osm_prtn_t *p;

 p_next = cl_qmap_head(&p_subn->prtn_pkey_tbl);
 while (p_next != cl_qmap_end(&p_subn->prtn_pkey_tbl)) {
  p = (osm_prtn_t *) p_next;
  p_next = cl_qmap_next(&p->map_item);
  if (!strncmp(p->name, name, sizeof(p->name)))
   return p;
 }

 return ((void*)0);
}
