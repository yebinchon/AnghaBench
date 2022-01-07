
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int osm_mgrp_t ;
struct TYPE_4__ {int mgrp_list; } ;
typedef TYPE_1__ osm_mgrp_box_t ;


 int * cl_item_obj (int ,int *,int ) ;
 scalar_t__ cl_qlist_count (int *) ;
 int cl_qlist_remove_head (int *) ;
 int list_item ;
 int mgrp_box_delete (TYPE_1__*) ;
 int mgrp_delete (int *) ;

void osm_mgrp_box_delete(osm_mgrp_box_t *mbox)
{
 osm_mgrp_t *mgrp;

 while (cl_qlist_count(&mbox->mgrp_list)) {
  mgrp = cl_item_obj(cl_qlist_remove_head(&mbox->mgrp_list),
       mgrp, list_item);
  mgrp_delete(mgrp);
 }
 mgrp_box_delete(mbox);
}
