
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GCM128_CONTEXT ;


 int OPENSSL_clear_free (int *,int) ;

void CRYPTO_gcm128_release(GCM128_CONTEXT *ctx)
{
    OPENSSL_clear_free(ctx, sizeof(*ctx));
}
