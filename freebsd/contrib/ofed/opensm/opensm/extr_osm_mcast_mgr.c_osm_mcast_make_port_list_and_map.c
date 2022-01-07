
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {TYPE_7__* port; int mcm_port_tbl; } ;
typedef TYPE_1__ osm_mgrp_t ;
struct TYPE_11__ {int mgrp_list; } ;
typedef TYPE_2__ osm_mgrp_box_t ;
typedef TYPE_1__ osm_mcm_port_t ;
struct TYPE_12__ {int map_item; int list_item; } ;
typedef TYPE_4__ osm_mcast_work_obj_t ;
typedef int cl_qmap_t ;
typedef int cl_qlist_t ;
typedef int cl_map_item_t ;
typedef int cl_list_item_t ;
struct TYPE_13__ {int guid; } ;


 TYPE_1__* cl_item_obj (int *,TYPE_1__*,int *) ;
 int * cl_qlist_end (int *) ;
 int * cl_qlist_head (int *) ;
 int cl_qlist_init (int *) ;
 int cl_qlist_insert_tail (int *,int *) ;
 int * cl_qlist_next (int *) ;
 int * cl_qmap_end (int *) ;
 int * cl_qmap_get (int *,int ) ;
 int * cl_qmap_head (int *) ;
 int cl_qmap_init (int *) ;
 int cl_qmap_insert (int *,int ,int *) ;
 int * cl_qmap_next (int *) ;
 TYPE_4__* mcast_work_obj_new (TYPE_7__*) ;

int osm_mcast_make_port_list_and_map(cl_qlist_t * list, cl_qmap_t * map,
         osm_mgrp_box_t * mbox)
{
 cl_map_item_t *map_item;
 cl_list_item_t *list_item;
 osm_mgrp_t *mgrp;
 osm_mcm_port_t *mcm_port;
 osm_mcast_work_obj_t *wobj;

 cl_qmap_init(map);
 cl_qlist_init(list);

 for (list_item = cl_qlist_head(&mbox->mgrp_list);
      list_item != cl_qlist_end(&mbox->mgrp_list);
      list_item = cl_qlist_next(list_item)) {
  mgrp = cl_item_obj(list_item, mgrp, list_item);
  for (map_item = cl_qmap_head(&mgrp->mcm_port_tbl);
       map_item != cl_qmap_end(&mgrp->mcm_port_tbl);
       map_item = cl_qmap_next(map_item)) {


   mcm_port = cl_item_obj(map_item, mcm_port, map_item);
   if (cl_qmap_get(map, mcm_port->port->guid) !=
       cl_qmap_end(map))
    continue;
   wobj = mcast_work_obj_new(mcm_port->port);
   if (!wobj)
    return -1;
   cl_qlist_insert_tail(list, &wobj->list_item);
   cl_qmap_insert(map, mcm_port->port->guid,
           &wobj->map_item);
  }
 }
 return 0;
}
