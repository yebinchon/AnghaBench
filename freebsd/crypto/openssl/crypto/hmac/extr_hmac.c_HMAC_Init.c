
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HMAC_CTX ;
typedef int EVP_MD ;


 int HMAC_CTX_reset (int *) ;
 int HMAC_Init_ex (int *,void const*,int,int const*,int *) ;

int HMAC_Init(HMAC_CTX *ctx, const void *key, int len, const EVP_MD *md)
{
    if (key && md)
        HMAC_CTX_reset(ctx);
    return HMAC_Init_ex(ctx, key, len, md, ((void*)0));
}
