
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * data; } ;
typedef int SM2_PKEY_CTX ;
typedef TYPE_1__ EVP_PKEY_CTX ;


 int ERR_R_MALLOC_FAILURE ;
 int * OPENSSL_zalloc (int) ;
 int SM2_F_PKEY_SM2_INIT ;
 int SM2err (int ,int ) ;

__attribute__((used)) static int pkey_sm2_init(EVP_PKEY_CTX *ctx)
{
    SM2_PKEY_CTX *smctx;

    if ((smctx = OPENSSL_zalloc(sizeof(*smctx))) == ((void*)0)) {
        SM2err(SM2_F_PKEY_SM2_INIT, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    ctx->data = smctx;
    return 1;
}
