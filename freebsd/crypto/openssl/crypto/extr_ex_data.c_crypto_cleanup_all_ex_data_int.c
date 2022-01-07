
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * meth; } ;
typedef TYPE_1__ EX_CALLBACKS ;


 int CRYPTO_EX_INDEX__COUNT ;
 int CRYPTO_THREAD_lock_free (int *) ;
 int cleanup_cb ;
 TYPE_1__* ex_data ;
 int * ex_data_lock ;
 int sk_EX_CALLBACK_pop_free (int *,int ) ;

void crypto_cleanup_all_ex_data_int(void)
{
    int i;

    for (i = 0; i < CRYPTO_EX_INDEX__COUNT; ++i) {
        EX_CALLBACKS *ip = &ex_data[i];

        sk_EX_CALLBACK_pop_free(ip->meth, cleanup_cb);
        ip->meth = ((void*)0);
    }

    CRYPTO_THREAD_lock_free(ex_data_lock);
    ex_data_lock = ((void*)0);
}
