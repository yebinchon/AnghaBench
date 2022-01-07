
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int root; } ;
typedef TYPE_1__ osm_mgrp_box_t ;


 int free (TYPE_1__*) ;
 int osm_mtree_destroy (int ) ;

void mgrp_box_delete(osm_mgrp_box_t *mbox)
{
 osm_mtree_destroy(mbox->root);
 free(mbox);
}
