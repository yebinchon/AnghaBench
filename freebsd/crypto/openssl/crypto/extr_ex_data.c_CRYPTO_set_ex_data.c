
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * sk; } ;
typedef TYPE_1__ CRYPTO_EX_DATA ;


 int CRYPTO_F_CRYPTO_SET_EX_DATA ;
 int CRYPTOerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int * sk_void_new_null () ;
 int sk_void_num (int *) ;
 int sk_void_push (int *,int *) ;
 int sk_void_set (int *,int,void*) ;

int CRYPTO_set_ex_data(CRYPTO_EX_DATA *ad, int idx, void *val)
{
    int i;

    if (ad->sk == ((void*)0)) {
        if ((ad->sk = sk_void_new_null()) == ((void*)0)) {
            CRYPTOerr(CRYPTO_F_CRYPTO_SET_EX_DATA, ERR_R_MALLOC_FAILURE);
            return 0;
        }
    }

    for (i = sk_void_num(ad->sk); i <= idx; ++i) {
        if (!sk_void_push(ad->sk, ((void*)0))) {
            CRYPTOerr(CRYPTO_F_CRYPTO_SET_EX_DATA, ERR_R_MALLOC_FAILURE);
            return 0;
        }
    }
    sk_void_set(ad->sk, idx, val);
    return 1;
}
