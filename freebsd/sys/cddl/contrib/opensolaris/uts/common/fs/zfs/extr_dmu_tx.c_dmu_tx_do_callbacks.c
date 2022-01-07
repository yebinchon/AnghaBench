
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int list_t ;
struct TYPE_5__ {int dcb_data; int (* dcb_func ) (int ,int) ;} ;
typedef TYPE_1__ dmu_tx_callback_t ;


 int kmem_free (TYPE_1__*,int) ;
 TYPE_1__* list_head (int *) ;
 int list_remove (int *,TYPE_1__*) ;
 int stub1 (int ,int) ;

void
dmu_tx_do_callbacks(list_t *cb_list, int error)
{
 dmu_tx_callback_t *dcb;

 while ((dcb = list_head(cb_list)) != ((void*)0)) {
  list_remove(cb_list, dcb);
  dcb->dcb_func(dcb->dcb_data, error);
  kmem_free(dcb, sizeof (dmu_tx_callback_t));
 }
}
