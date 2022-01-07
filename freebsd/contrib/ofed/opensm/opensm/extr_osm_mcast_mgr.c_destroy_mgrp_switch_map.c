
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ is_mc_member; scalar_t__ num_of_mcm; } ;
typedef TYPE_1__ osm_switch_t ;
typedef int cl_qmap_t ;
typedef int cl_map_item_t ;


 TYPE_1__* cl_item_obj (int *,TYPE_1__*,int ) ;
 int * cl_qmap_end (int *) ;
 int * cl_qmap_head (int *) ;
 int * cl_qmap_next (int *) ;
 int cl_qmap_remove_all (int *) ;
 int mgrp_item ;

__attribute__((used)) static void destroy_mgrp_switch_map(cl_qmap_t * m)
{
 osm_switch_t *sw;
 cl_map_item_t *i;

 for (i = cl_qmap_head(m); i != cl_qmap_end(m); i = cl_qmap_next(i)) {
  sw = cl_item_obj(i, sw, mgrp_item);
  sw->num_of_mcm = 0;
  sw->is_mc_member = 0;
 }
 cl_qmap_remove_all(m);
}
