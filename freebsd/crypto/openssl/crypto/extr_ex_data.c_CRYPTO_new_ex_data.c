
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int * sk; } ;
struct TYPE_13__ {int argp; int argl; int (* new_func ) (void*,void*,TYPE_3__*,int,int ,int ) ;} ;
struct TYPE_12__ {int meth; } ;
typedef TYPE_1__ EX_CALLBACKS ;
typedef TYPE_2__ EX_CALLBACK ;
typedef TYPE_3__ CRYPTO_EX_DATA ;


 int CRYPTO_F_CRYPTO_NEW_EX_DATA ;
 int CRYPTO_THREAD_unlock (int ) ;
 void* CRYPTO_get_ex_data (TYPE_3__*,int) ;
 int CRYPTOerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (TYPE_2__**) ;
 TYPE_2__** OPENSSL_malloc (int) ;
 scalar_t__ OSSL_NELEM (TYPE_2__**) ;
 int ex_data_lock ;
 TYPE_1__* get_and_lock (int) ;
 int sk_EX_CALLBACK_num (int ) ;
 TYPE_2__* sk_EX_CALLBACK_value (int ,int) ;
 int stub1 (void*,void*,TYPE_3__*,int,int ,int ) ;

int CRYPTO_new_ex_data(int class_index, void *obj, CRYPTO_EX_DATA *ad)
{
    int mx, i;
    void *ptr;
    EX_CALLBACK **storage = ((void*)0);
    EX_CALLBACK *stack[10];
    EX_CALLBACKS *ip = get_and_lock(class_index);

    if (ip == ((void*)0))
        return 0;

    ad->sk = ((void*)0);

    mx = sk_EX_CALLBACK_num(ip->meth);
    if (mx > 0) {
        if (mx < (int)OSSL_NELEM(stack))
            storage = stack;
        else
            storage = OPENSSL_malloc(sizeof(*storage) * mx);
        if (storage != ((void*)0))
            for (i = 0; i < mx; i++)
                storage[i] = sk_EX_CALLBACK_value(ip->meth, i);
    }
    CRYPTO_THREAD_unlock(ex_data_lock);

    if (mx > 0 && storage == ((void*)0)) {
        CRYPTOerr(CRYPTO_F_CRYPTO_NEW_EX_DATA, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    for (i = 0; i < mx; i++) {
        if (storage[i] && storage[i]->new_func) {
            ptr = CRYPTO_get_ex_data(ad, i);
            storage[i]->new_func(obj, ptr, ad, i,
                                 storage[i]->argl, storage[i]->argp);
        }
    }
    if (storage != stack)
        OPENSSL_free(storage);
    return 1;
}
