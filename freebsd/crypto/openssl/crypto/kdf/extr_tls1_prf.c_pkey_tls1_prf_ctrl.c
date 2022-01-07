
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* data; } ;
struct TYPE_4__ {int seclen; int seed; int seedlen; int * sec; void* md; } ;
typedef TYPE_1__ TLS1_PRF_PKEY_CTX ;
typedef TYPE_2__ EVP_PKEY_CTX ;





 int OPENSSL_cleanse (int,int) ;
 int OPENSSL_clear_free (int *,int) ;
 int * OPENSSL_memdup (void*,int) ;
 int TLS1_PRF_MAXBUF ;
 int memcpy (int,void*,int) ;

__attribute__((used)) static int pkey_tls1_prf_ctrl(EVP_PKEY_CTX *ctx, int type, int p1, void *p2)
{
    TLS1_PRF_PKEY_CTX *kctx = ctx->data;
    switch (type) {
    case 130:
        kctx->md = p2;
        return 1;

    case 129:
        if (p1 < 0)
            return 0;
        if (kctx->sec != ((void*)0))
            OPENSSL_clear_free(kctx->sec, kctx->seclen);
        OPENSSL_cleanse(kctx->seed, kctx->seedlen);
        kctx->seedlen = 0;
        kctx->sec = OPENSSL_memdup(p2, p1);
        if (kctx->sec == ((void*)0))
            return 0;
        kctx->seclen = p1;
        return 1;

    case 128:
        if (p1 == 0 || p2 == ((void*)0))
            return 1;
        if (p1 < 0 || p1 > (int)(TLS1_PRF_MAXBUF - kctx->seedlen))
            return 0;
        memcpy(kctx->seed + kctx->seedlen, p2, p1);
        kctx->seedlen += p1;
        return 1;

    default:
        return -2;

    }
}
