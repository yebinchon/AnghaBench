
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* data; } ;
struct TYPE_4__ {int mode; int salt_len; int key_len; int info_len; int info; int * key; int * salt; void* md; } ;
typedef TYPE_1__ HKDF_PKEY_CTX ;
typedef TYPE_2__ EVP_PKEY_CTX ;







 int HKDF_MAXBUF ;
 int OPENSSL_clear_free (int *,int) ;
 void* OPENSSL_memdup (void*,int) ;
 int memcpy (int,void*,int) ;

__attribute__((used)) static int pkey_hkdf_ctrl(EVP_PKEY_CTX *ctx, int type, int p1, void *p2)
{
    HKDF_PKEY_CTX *kctx = ctx->data;

    switch (type) {
    case 130:
        if (p2 == ((void*)0))
            return 0;

        kctx->md = p2;
        return 1;

    case 129:
        kctx->mode = p1;
        return 1;

    case 128:
        if (p1 == 0 || p2 == ((void*)0))
            return 1;

        if (p1 < 0)
            return 0;

        if (kctx->salt != ((void*)0))
            OPENSSL_clear_free(kctx->salt, kctx->salt_len);

        kctx->salt = OPENSSL_memdup(p2, p1);
        if (kctx->salt == ((void*)0))
            return 0;

        kctx->salt_len = p1;
        return 1;

    case 131:
        if (p1 < 0)
            return 0;

        if (kctx->key != ((void*)0))
            OPENSSL_clear_free(kctx->key, kctx->key_len);

        kctx->key = OPENSSL_memdup(p2, p1);
        if (kctx->key == ((void*)0))
            return 0;

        kctx->key_len = p1;
        return 1;

    case 132:
        if (p1 == 0 || p2 == ((void*)0))
            return 1;

        if (p1 < 0 || p1 > (int)(HKDF_MAXBUF - kctx->info_len))
            return 0;

        memcpy(kctx->info + kctx->info_len, p2, p1);
        kctx->info_len += p1;
        return 1;

    default:
        return -2;

    }
}
