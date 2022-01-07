
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int pkey; } ;
struct TYPE_5__ {int * tbuf; } ;
typedef TYPE_1__ RSA_PKEY_CTX ;
typedef TYPE_2__ EVP_PKEY_CTX ;


 int ERR_R_MALLOC_FAILURE ;
 int EVP_PKEY_size (int ) ;
 int * OPENSSL_malloc (int ) ;
 int RSA_F_SETUP_TBUF ;
 int RSAerr (int ,int ) ;

__attribute__((used)) static int setup_tbuf(RSA_PKEY_CTX *ctx, EVP_PKEY_CTX *pk)
{
    if (ctx->tbuf != ((void*)0))
        return 1;
    if ((ctx->tbuf = OPENSSL_malloc(EVP_PKEY_size(pk->pkey))) == ((void*)0)) {
        RSAerr(RSA_F_SETUP_TBUF, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    return 1;
}
