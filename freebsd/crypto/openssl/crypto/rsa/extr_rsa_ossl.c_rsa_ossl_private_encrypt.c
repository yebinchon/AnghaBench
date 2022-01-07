
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int flags; scalar_t__ version; int n; int _method_mod_n; TYPE_1__* meth; int * d; int * iqmp; int * dmq1; int * dmp1; int * q; int * p; int lock; } ;
struct TYPE_6__ {int (* bn_mod_exp ) (int *,int *,int *,int ,int *,int ) ;int (* rsa_mod_exp ) (int *,int *,TYPE_2__*,int *) ;} ;
typedef TYPE_2__ RSA ;
typedef int BN_CTX ;
typedef int BN_BLINDING ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int BN_CTX_free (int *) ;
 int * BN_CTX_get (int *) ;
 int * BN_CTX_new () ;
 int BN_CTX_start (int *) ;
 int BN_FLG_CONSTTIME ;
 int BN_MONT_CTX_set_locked (int *,int ,int ,int *) ;
 int * BN_bin2bn (unsigned char*,int,int *) ;
 int BN_bn2binpad (int *,unsigned char*,int) ;
 scalar_t__ BN_cmp (int *,int *) ;
 int BN_free (int *) ;
 int * BN_new () ;
 int BN_num_bytes (int ) ;
 int BN_sub (int *,int ,int *) ;
 scalar_t__ BN_ucmp (int *,int ) ;
 int BN_with_flags (int *,int *,int ) ;
 int ERR_R_INTERNAL_ERROR ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_clear_free (unsigned char*,int) ;
 unsigned char* OPENSSL_malloc (int) ;
 scalar_t__ RSA_ASN1_VERSION_MULTI ;
 int RSA_FLAG_CACHE_PUBLIC ;
 int RSA_FLAG_EXT_PKEY ;
 int RSA_FLAG_NO_BLINDING ;
 int RSA_F_RSA_OSSL_PRIVATE_ENCRYPT ;


 int RSA_R_DATA_TOO_LARGE_FOR_MODULUS ;
 int RSA_R_MISSING_PRIVATE_KEY ;
 int RSA_R_UNKNOWN_PADDING_TYPE ;


 int RSA_padding_add_PKCS1_type_1 (unsigned char*,int,unsigned char const*,int) ;
 int RSA_padding_add_X931 (unsigned char*,int,unsigned char const*,int) ;
 int RSA_padding_add_none (unsigned char*,int,unsigned char const*,int) ;
 int RSAerr (int ,int ) ;
 int rsa_blinding_convert (int *,int *,int *,int *) ;
 int rsa_blinding_invert (int *,int *,int *,int *) ;
 int * rsa_get_blinding (TYPE_2__*,int*,int *) ;
 int stub1 (int *,int *,TYPE_2__*,int *) ;
 int stub2 (int *,int *,int *,int ,int *,int ) ;

__attribute__((used)) static int rsa_ossl_private_encrypt(int flen, const unsigned char *from,
                                   unsigned char *to, RSA *rsa, int padding)
{
    BIGNUM *f, *ret, *res;
    int i, num = 0, r = -1;
    unsigned char *buf = ((void*)0);
    BN_CTX *ctx = ((void*)0);
    int local_blinding = 0;





    BIGNUM *unblind = ((void*)0);
    BN_BLINDING *blinding = ((void*)0);

    if ((ctx = BN_CTX_new()) == ((void*)0))
        goto err;
    BN_CTX_start(ctx);
    f = BN_CTX_get(ctx);
    ret = BN_CTX_get(ctx);
    num = BN_num_bytes(rsa->n);
    buf = OPENSSL_malloc(num);
    if (ret == ((void*)0) || buf == ((void*)0)) {
        RSAerr(RSA_F_RSA_OSSL_PRIVATE_ENCRYPT, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    switch (padding) {
    case 130:
        i = RSA_padding_add_PKCS1_type_1(buf, num, from, flen);
        break;
    case 128:
        i = RSA_padding_add_X931(buf, num, from, flen);
        break;
    case 131:
        i = RSA_padding_add_none(buf, num, from, flen);
        break;
    case 129:
    default:
        RSAerr(RSA_F_RSA_OSSL_PRIVATE_ENCRYPT, RSA_R_UNKNOWN_PADDING_TYPE);
        goto err;
    }
    if (i <= 0)
        goto err;

    if (BN_bin2bn(buf, num, f) == ((void*)0))
        goto err;

    if (BN_ucmp(f, rsa->n) >= 0) {

        RSAerr(RSA_F_RSA_OSSL_PRIVATE_ENCRYPT,
               RSA_R_DATA_TOO_LARGE_FOR_MODULUS);
        goto err;
    }

    if (rsa->flags & RSA_FLAG_CACHE_PUBLIC)
        if (!BN_MONT_CTX_set_locked(&rsa->_method_mod_n, rsa->lock,
                                    rsa->n, ctx))
            goto err;

    if (!(rsa->flags & RSA_FLAG_NO_BLINDING)) {
        blinding = rsa_get_blinding(rsa, &local_blinding, ctx);
        if (blinding == ((void*)0)) {
            RSAerr(RSA_F_RSA_OSSL_PRIVATE_ENCRYPT, ERR_R_INTERNAL_ERROR);
            goto err;
        }
    }

    if (blinding != ((void*)0)) {
        if (!local_blinding && ((unblind = BN_CTX_get(ctx)) == ((void*)0))) {
            RSAerr(RSA_F_RSA_OSSL_PRIVATE_ENCRYPT, ERR_R_MALLOC_FAILURE);
            goto err;
        }
        if (!rsa_blinding_convert(blinding, f, unblind, ctx))
            goto err;
    }

    if ((rsa->flags & RSA_FLAG_EXT_PKEY) ||
        (rsa->version == RSA_ASN1_VERSION_MULTI) ||
        ((rsa->p != ((void*)0)) &&
         (rsa->q != ((void*)0)) &&
         (rsa->dmp1 != ((void*)0)) && (rsa->dmq1 != ((void*)0)) && (rsa->iqmp != ((void*)0)))) {
        if (!rsa->meth->rsa_mod_exp(ret, f, rsa, ctx))
            goto err;
    } else {
        BIGNUM *d = BN_new();
        if (d == ((void*)0)) {
            RSAerr(RSA_F_RSA_OSSL_PRIVATE_ENCRYPT, ERR_R_MALLOC_FAILURE);
            goto err;
        }
        if (rsa->d == ((void*)0)) {
            RSAerr(RSA_F_RSA_OSSL_PRIVATE_ENCRYPT, RSA_R_MISSING_PRIVATE_KEY);
            BN_free(d);
            goto err;
        }
        BN_with_flags(d, rsa->d, BN_FLG_CONSTTIME);

        if (!rsa->meth->bn_mod_exp(ret, f, d, rsa->n, ctx,
                                   rsa->_method_mod_n)) {
            BN_free(d);
            goto err;
        }

        BN_free(d);
    }

    if (blinding)
        if (!rsa_blinding_invert(blinding, ret, unblind, ctx))
            goto err;

    if (padding == 128) {
        if (!BN_sub(f, rsa->n, ret))
            goto err;
        if (BN_cmp(ret, f) > 0)
            res = f;
        else
            res = ret;
    } else {
        res = ret;
    }





    r = BN_bn2binpad(res, to, num);
 err:
    BN_CTX_end(ctx);
    BN_CTX_free(ctx);
    OPENSSL_clear_free(buf, num);
    return r;
}
