
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * mds; } ;
typedef TYPE_1__ TS_RESP_CTX ;
typedef int EVP_MD ;


 int ERR_R_MALLOC_FAILURE ;
 int TS_F_TS_RESP_CTX_ADD_MD ;
 int TSerr (int ,int ) ;
 int * sk_EVP_MD_new_null () ;
 int sk_EVP_MD_push (int *,int const*) ;

int TS_RESP_CTX_add_md(TS_RESP_CTX *ctx, const EVP_MD *md)
{
    if (ctx->mds == ((void*)0)
        && (ctx->mds = sk_EVP_MD_new_null()) == ((void*)0))
        goto err;
    if (!sk_EVP_MD_push(ctx->mds, md))
        goto err;

    return 1;
 err:
    TSerr(TS_F_TS_RESP_CTX_ADD_MD, ERR_R_MALLOC_FAILURE);
    return 0;
}
