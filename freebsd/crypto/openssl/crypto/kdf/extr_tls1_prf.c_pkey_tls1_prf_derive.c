
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* data; } ;
struct TYPE_4__ {scalar_t__ seedlen; int seed; int seclen; int * sec; int * md; } ;
typedef TYPE_1__ TLS1_PRF_PKEY_CTX ;
typedef TYPE_2__ EVP_PKEY_CTX ;


 int KDF_F_PKEY_TLS1_PRF_DERIVE ;
 int KDF_R_MISSING_MESSAGE_DIGEST ;
 int KDF_R_MISSING_SECRET ;
 int KDF_R_MISSING_SEED ;
 int KDFerr (int ,int ) ;
 int tls1_prf_alg (int *,int *,int ,int ,scalar_t__,unsigned char*,size_t) ;

__attribute__((used)) static int pkey_tls1_prf_derive(EVP_PKEY_CTX *ctx, unsigned char *key,
                                size_t *keylen)
{
    TLS1_PRF_PKEY_CTX *kctx = ctx->data;
    if (kctx->md == ((void*)0)) {
        KDFerr(KDF_F_PKEY_TLS1_PRF_DERIVE, KDF_R_MISSING_MESSAGE_DIGEST);
        return 0;
    }
    if (kctx->sec == ((void*)0)) {
        KDFerr(KDF_F_PKEY_TLS1_PRF_DERIVE, KDF_R_MISSING_SECRET);
        return 0;
    }
    if (kctx->seedlen == 0) {
        KDFerr(KDF_F_PKEY_TLS1_PRF_DERIVE, KDF_R_MISSING_SEED);
        return 0;
    }
    return tls1_prf_alg(kctx->md, kctx->sec, kctx->seclen,
                        kctx->seed, kctx->seedlen,
                        key, *keylen);
}
