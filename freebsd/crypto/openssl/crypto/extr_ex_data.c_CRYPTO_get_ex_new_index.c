
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {long argl; int * free_func; int * dup_func; int * new_func; void* argp; } ;
struct TYPE_6__ {int * meth; } ;
typedef TYPE_1__ EX_CALLBACKS ;
typedef TYPE_2__ EX_CALLBACK ;
typedef int CRYPTO_EX_new ;
typedef int CRYPTO_EX_free ;
typedef int CRYPTO_EX_dup ;


 int CRYPTO_F_CRYPTO_GET_EX_NEW_INDEX ;
 int CRYPTO_THREAD_unlock (int ) ;
 int CRYPTOerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (TYPE_2__*) ;
 scalar_t__ OPENSSL_malloc (int) ;
 int ex_data_lock ;
 TYPE_1__* get_and_lock (int) ;
 int * sk_EX_CALLBACK_new_null () ;
 int sk_EX_CALLBACK_num (int *) ;
 int sk_EX_CALLBACK_push (int *,int *) ;
 int sk_EX_CALLBACK_set (int *,int,TYPE_2__*) ;

int CRYPTO_get_ex_new_index(int class_index, long argl, void *argp,
                            CRYPTO_EX_new *new_func, CRYPTO_EX_dup *dup_func,
                            CRYPTO_EX_free *free_func)
{
    int toret = -1;
    EX_CALLBACK *a;
    EX_CALLBACKS *ip = get_and_lock(class_index);

    if (ip == ((void*)0))
        return -1;

    if (ip->meth == ((void*)0)) {
        ip->meth = sk_EX_CALLBACK_new_null();


        if (ip->meth == ((void*)0)
            || !sk_EX_CALLBACK_push(ip->meth, ((void*)0))) {
            CRYPTOerr(CRYPTO_F_CRYPTO_GET_EX_NEW_INDEX, ERR_R_MALLOC_FAILURE);
            goto err;
        }
    }

    a = (EX_CALLBACK *)OPENSSL_malloc(sizeof(*a));
    if (a == ((void*)0)) {
        CRYPTOerr(CRYPTO_F_CRYPTO_GET_EX_NEW_INDEX, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    a->argl = argl;
    a->argp = argp;
    a->new_func = new_func;
    a->dup_func = dup_func;
    a->free_func = free_func;

    if (!sk_EX_CALLBACK_push(ip->meth, ((void*)0))) {
        CRYPTOerr(CRYPTO_F_CRYPTO_GET_EX_NEW_INDEX, ERR_R_MALLOC_FAILURE);
        OPENSSL_free(a);
        goto err;
    }
    toret = sk_EX_CALLBACK_num(ip->meth) - 1;
    (void)sk_EX_CALLBACK_set(ip->meth, toret, a);

 err:
    CRYPTO_THREAD_unlock(ex_data_lock);
    return toret;
}
