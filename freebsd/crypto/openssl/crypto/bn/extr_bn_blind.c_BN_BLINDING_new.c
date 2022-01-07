
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int counter; int * mod; int * Ai; int * A; int * lock; } ;
typedef TYPE_1__ BN_BLINDING ;
typedef int const BIGNUM ;


 int BN_BLINDING_free (TYPE_1__*) ;
 int BN_BLINDING_set_current_thread (TYPE_1__*) ;
 int BN_FLG_CONSTTIME ;
 int BN_F_BN_BLINDING_NEW ;
 void* BN_dup (int const*) ;
 scalar_t__ BN_get_flags (int const*,int ) ;
 int BN_set_flags (int *,int ) ;
 int BNerr (int ,int ) ;
 int * CRYPTO_THREAD_lock_new () ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (TYPE_1__*) ;
 TYPE_1__* OPENSSL_zalloc (int) ;
 int bn_check_top (int const*) ;

BN_BLINDING *BN_BLINDING_new(const BIGNUM *A, const BIGNUM *Ai, BIGNUM *mod)
{
    BN_BLINDING *ret = ((void*)0);

    bn_check_top(mod);

    if ((ret = OPENSSL_zalloc(sizeof(*ret))) == ((void*)0)) {
        BNerr(BN_F_BN_BLINDING_NEW, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    ret->lock = CRYPTO_THREAD_lock_new();
    if (ret->lock == ((void*)0)) {
        BNerr(BN_F_BN_BLINDING_NEW, ERR_R_MALLOC_FAILURE);
        OPENSSL_free(ret);
        return ((void*)0);
    }

    BN_BLINDING_set_current_thread(ret);

    if (A != ((void*)0)) {
        if ((ret->A = BN_dup(A)) == ((void*)0))
            goto err;
    }

    if (Ai != ((void*)0)) {
        if ((ret->Ai = BN_dup(Ai)) == ((void*)0))
            goto err;
    }


    if ((ret->mod = BN_dup(mod)) == ((void*)0))
        goto err;

    if (BN_get_flags(mod, BN_FLG_CONSTTIME) != 0)
        BN_set_flags(ret->mod, BN_FLG_CONSTTIME);






    ret->counter = -1;

    return ret;

 err:
    BN_BLINDING_free(ret);
    return ((void*)0);
}
