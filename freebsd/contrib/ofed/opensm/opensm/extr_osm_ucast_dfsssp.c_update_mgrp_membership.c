
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {int is_mc_member; int num_of_mcm; } ;
typedef TYPE_5__ osm_switch_t ;
struct TYPE_15__ {TYPE_4__* p_physp; TYPE_1__* p_node; } ;
typedef TYPE_6__ osm_port_t ;
struct TYPE_16__ {TYPE_6__* p_port; } ;
typedef TYPE_7__ osm_mcast_work_obj_t ;
typedef int cl_qlist_t ;
typedef int cl_list_item_t ;
struct TYPE_13__ {TYPE_3__* p_remote_physp; } ;
struct TYPE_12__ {TYPE_2__* p_node; } ;
struct TYPE_11__ {TYPE_5__* sw; } ;
struct TYPE_10__ {TYPE_5__* sw; } ;


 TYPE_7__* cl_item_obj (int *,TYPE_7__*,int ) ;
 int * cl_qlist_end (int *) ;
 int * cl_qlist_head (int *) ;
 int * cl_qlist_next (int *) ;
 int list_item ;

__attribute__((used)) static void update_mgrp_membership(cl_qlist_t * port_list)
{
 osm_mcast_work_obj_t *wobj = ((void*)0);
 osm_port_t *port = ((void*)0);
 osm_switch_t *sw = ((void*)0);
 cl_list_item_t *i = ((void*)0);

 for (i = cl_qlist_head(port_list); i != cl_qlist_end(port_list);
      i = cl_qlist_next(i)) {
  wobj = cl_item_obj(i, wobj, list_item);
  port = wobj->p_port;
  if (port->p_node->sw) {
   sw = port->p_node->sw;
   sw->is_mc_member = 1;
  } else {
   sw = port->p_physp->p_remote_physp->p_node->sw;
   sw->num_of_mcm++;
  }
 }
}
