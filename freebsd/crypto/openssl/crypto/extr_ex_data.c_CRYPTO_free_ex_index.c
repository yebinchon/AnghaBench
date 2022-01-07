
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int free_func; int dup_func; int new_func; } ;
struct TYPE_5__ {int meth; } ;
typedef TYPE_1__ EX_CALLBACKS ;
typedef TYPE_2__ EX_CALLBACK ;


 int CRYPTO_THREAD_unlock (int ) ;
 int dummy_dup ;
 int dummy_free ;
 int dummy_new ;
 int ex_data_lock ;
 TYPE_1__* get_and_lock (int) ;
 int sk_EX_CALLBACK_num (int ) ;
 TYPE_2__* sk_EX_CALLBACK_value (int ,int) ;

int CRYPTO_free_ex_index(int class_index, int idx)
{
    EX_CALLBACKS *ip = get_and_lock(class_index);
    EX_CALLBACK *a;
    int toret = 0;

    if (ip == ((void*)0))
        return 0;
    if (idx < 0 || idx >= sk_EX_CALLBACK_num(ip->meth))
        goto err;
    a = sk_EX_CALLBACK_value(ip->meth, idx);
    if (a == ((void*)0))
        goto err;
    a->new_func = dummy_new;
    a->dup_func = dummy_dup;
    a->free_func = dummy_free;
    toret = 1;
err:
    CRYPTO_THREAD_unlock(ex_data_lock);
    return toret;
}
