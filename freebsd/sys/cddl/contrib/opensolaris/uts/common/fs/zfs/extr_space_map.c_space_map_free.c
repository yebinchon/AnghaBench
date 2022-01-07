
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ sm_object; int sm_os; } ;
typedef TYPE_1__ space_map_t ;
typedef int dmu_tx_t ;


 int space_map_free_obj (int ,int ,int *) ;
 int space_map_object (TYPE_1__*) ;

void
space_map_free(space_map_t *sm, dmu_tx_t *tx)
{
 if (sm == ((void*)0))
  return;

 space_map_free_obj(sm->sm_os, space_map_object(sm), tx);
 sm->sm_object = 0;
}
