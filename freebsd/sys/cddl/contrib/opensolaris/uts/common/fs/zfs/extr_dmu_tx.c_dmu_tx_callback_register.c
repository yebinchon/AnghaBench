
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int tx_callbacks; } ;
typedef TYPE_1__ dmu_tx_t ;
struct TYPE_7__ {void* dcb_data; int * dcb_func; } ;
typedef TYPE_2__ dmu_tx_callback_t ;
typedef int dmu_tx_callback_func_t ;


 int KM_SLEEP ;
 TYPE_2__* kmem_alloc (int,int ) ;
 int list_insert_tail (int *,TYPE_2__*) ;

void
dmu_tx_callback_register(dmu_tx_t *tx, dmu_tx_callback_func_t *func, void *data)
{
 dmu_tx_callback_t *dcb;

 dcb = kmem_alloc(sizeof (dmu_tx_callback_t), KM_SLEEP);

 dcb->dcb_func = func;
 dcb->dcb_data = data;

 list_insert_tail(&tx->tx_callbacks, dcb);
}
