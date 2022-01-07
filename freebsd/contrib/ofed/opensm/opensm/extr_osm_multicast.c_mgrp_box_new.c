
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {int mgrp_list; int mlid; } ;
typedef TYPE_1__ osm_mgrp_box_t ;


 int cl_qlist_init (int *) ;
 TYPE_1__* malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static osm_mgrp_box_t *mgrp_box_new(uint16_t mlid)
{
 osm_mgrp_box_t *mbox = malloc(sizeof(*mbox));
 if (!mbox)
  return ((void*)0);

 memset(mbox, 0, sizeof(*mbox));
 mbox->mlid = mlid;
 cl_qlist_init(&mbox->mgrp_list);

 return mbox;
}
