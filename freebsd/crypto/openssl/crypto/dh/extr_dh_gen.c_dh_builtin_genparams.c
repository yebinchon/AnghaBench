
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * g; int * p; } ;
typedef TYPE_1__ DH ;
typedef int BN_GENCB ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int BN_CTX_free (int *) ;
 int * BN_CTX_get (int *) ;
 int * BN_CTX_new () ;
 int BN_CTX_start (int *) ;
 int BN_GENCB_call (int *,int,int ) ;
 int BN_generate_prime_ex (int *,int,int,int *,int *,int *) ;
 void* BN_new () ;
 int BN_set_word (int *,int) ;
 int DH_F_DH_BUILTIN_GENPARAMS ;
 int DH_GENERATOR_2 ;
 int DH_GENERATOR_5 ;
 int DH_R_BAD_GENERATOR ;
 int DHerr (int ,int ) ;
 int ERR_R_BN_LIB ;

__attribute__((used)) static int dh_builtin_genparams(DH *ret, int prime_len, int generator,
                                BN_GENCB *cb)
{
    BIGNUM *t1, *t2;
    int g, ok = -1;
    BN_CTX *ctx = ((void*)0);

    ctx = BN_CTX_new();
    if (ctx == ((void*)0))
        goto err;
    BN_CTX_start(ctx);
    t1 = BN_CTX_get(ctx);
    t2 = BN_CTX_get(ctx);
    if (t2 == ((void*)0))
        goto err;


    if (!ret->p && ((ret->p = BN_new()) == ((void*)0)))
        goto err;
    if (!ret->g && ((ret->g = BN_new()) == ((void*)0)))
        goto err;

    if (generator <= 1) {
        DHerr(DH_F_DH_BUILTIN_GENPARAMS, DH_R_BAD_GENERATOR);
        goto err;
    }
    if (generator == DH_GENERATOR_2) {
        if (!BN_set_word(t1, 24))
            goto err;
        if (!BN_set_word(t2, 11))
            goto err;
        g = 2;
    } else if (generator == DH_GENERATOR_5) {
        if (!BN_set_word(t1, 60))
            goto err;
        if (!BN_set_word(t2, 23))
            goto err;
        g = 5;
    } else {





        if (!BN_set_word(t1, 12))
            goto err;
        if (!BN_set_word(t2, 11))
            goto err;
        g = generator;
    }

    if (!BN_generate_prime_ex(ret->p, prime_len, 1, t1, t2, cb))
        goto err;
    if (!BN_GENCB_call(cb, 3, 0))
        goto err;
    if (!BN_set_word(ret->g, g))
        goto err;
    ok = 1;
 err:
    if (ok == -1) {
        DHerr(DH_F_DH_BUILTIN_GENPARAMS, ERR_R_BN_LIB);
        ok = 0;
    }

    BN_CTX_end(ctx);
    BN_CTX_free(ctx);
    return ok;
}
