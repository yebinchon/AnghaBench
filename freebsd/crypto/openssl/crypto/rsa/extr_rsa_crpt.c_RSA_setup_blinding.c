
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * e; int _method_mod_n; TYPE_1__* meth; int n; int q; int p; int d; } ;
struct TYPE_4__ {int bn_mod_exp; } ;
typedef TYPE_2__ RSA ;
typedef int BN_CTX ;
typedef int BN_BLINDING ;
typedef int BIGNUM ;


 int * BN_BLINDING_create_param (int *,int *,int *,int *,int ,int ) ;
 int BN_BLINDING_set_current_thread (int *) ;
 int BN_CTX_end (int *) ;
 int BN_CTX_free (int *) ;
 int * BN_CTX_get (int *) ;
 int * BN_CTX_new () ;
 int BN_CTX_start (int *) ;
 int BN_FLG_CONSTTIME ;
 int BN_free (int *) ;
 int * BN_new () ;
 int BN_with_flags (int *,int ,int ) ;
 int ERR_R_BN_LIB ;
 int ERR_R_MALLOC_FAILURE ;
 int RSA_F_RSA_SETUP_BLINDING ;
 int RSA_R_NO_PUBLIC_EXPONENT ;
 int RSAerr (int ,int ) ;
 int * rsa_get_public_exp (int ,int ,int ,int *) ;

BN_BLINDING *RSA_setup_blinding(RSA *rsa, BN_CTX *in_ctx)
{
    BIGNUM *e;
    BN_CTX *ctx;
    BN_BLINDING *ret = ((void*)0);

    if (in_ctx == ((void*)0)) {
        if ((ctx = BN_CTX_new()) == ((void*)0))
            return 0;
    } else {
        ctx = in_ctx;
    }

    BN_CTX_start(ctx);
    e = BN_CTX_get(ctx);
    if (e == ((void*)0)) {
        RSAerr(RSA_F_RSA_SETUP_BLINDING, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    if (rsa->e == ((void*)0)) {
        e = rsa_get_public_exp(rsa->d, rsa->p, rsa->q, ctx);
        if (e == ((void*)0)) {
            RSAerr(RSA_F_RSA_SETUP_BLINDING, RSA_R_NO_PUBLIC_EXPONENT);
            goto err;
        }
    } else {
        e = rsa->e;
    }

    {
        BIGNUM *n = BN_new();

        if (n == ((void*)0)) {
            RSAerr(RSA_F_RSA_SETUP_BLINDING, ERR_R_MALLOC_FAILURE);
            goto err;
        }
        BN_with_flags(n, rsa->n, BN_FLG_CONSTTIME);

        ret = BN_BLINDING_create_param(((void*)0), e, n, ctx, rsa->meth->bn_mod_exp,
                                       rsa->_method_mod_n);

        BN_free(n);
    }
    if (ret == ((void*)0)) {
        RSAerr(RSA_F_RSA_SETUP_BLINDING, ERR_R_BN_LIB);
        goto err;
    }

    BN_BLINDING_set_current_thread(ret);

 err:
    BN_CTX_end(ctx);
    if (ctx != in_ctx)
        BN_CTX_free(ctx);
    if (e != rsa->e)
        BN_free(e);

    return ret;
}
