
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int list_t ;


 int dmu_tx_do_callbacks (int *,int ) ;
 int kmem_free (int *,int) ;
 int list_destroy (int *) ;

__attribute__((used)) static void
txg_do_callbacks(void *arg)
{
 list_t *cb_list = arg;

 dmu_tx_do_callbacks(cb_list, 0);

 list_destroy(cb_list);

 kmem_free(cb_list, sizeof (list_t));
}
