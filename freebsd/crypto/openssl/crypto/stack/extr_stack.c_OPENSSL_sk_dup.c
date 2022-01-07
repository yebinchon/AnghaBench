
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int num; int num_alloc; int * data; } ;
typedef TYPE_1__ OPENSSL_STACK ;


 int CRYPTO_F_OPENSSL_SK_DUP ;
 int CRYPTOerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 void* OPENSSL_malloc (int) ;
 int OPENSSL_sk_free (TYPE_1__*) ;
 int memcpy (int *,int *,int) ;

OPENSSL_STACK *OPENSSL_sk_dup(const OPENSSL_STACK *sk)
{
    OPENSSL_STACK *ret;

    if ((ret = OPENSSL_malloc(sizeof(*ret))) == ((void*)0)) {
        CRYPTOerr(CRYPTO_F_OPENSSL_SK_DUP, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }


    *ret = *sk;

    if (sk->num == 0) {

        ret->data = ((void*)0);
        ret->num_alloc = 0;
        return ret;
    }

    if ((ret->data = OPENSSL_malloc(sizeof(*ret->data) * sk->num_alloc)) == ((void*)0))
        goto err;
    memcpy(ret->data, sk->data, sizeof(void *) * sk->num);
    return ret;
 err:
    OPENSSL_sk_free(ret);
    return ((void*)0);
}
