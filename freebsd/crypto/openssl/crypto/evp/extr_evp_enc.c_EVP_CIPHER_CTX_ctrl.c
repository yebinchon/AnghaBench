
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* cipher; } ;
struct TYPE_5__ {int (* ctrl ) (TYPE_2__*,int,int,void*) ;} ;
typedef TYPE_2__ EVP_CIPHER_CTX ;


 int EVP_F_EVP_CIPHER_CTX_CTRL ;
 int EVP_R_CTRL_NOT_IMPLEMENTED ;
 int EVP_R_CTRL_OPERATION_NOT_IMPLEMENTED ;
 int EVP_R_NO_CIPHER_SET ;
 int EVPerr (int ,int ) ;
 int stub1 (TYPE_2__*,int,int,void*) ;

int EVP_CIPHER_CTX_ctrl(EVP_CIPHER_CTX *ctx, int type, int arg, void *ptr)
{
    int ret;

    if (!ctx->cipher) {
        EVPerr(EVP_F_EVP_CIPHER_CTX_CTRL, EVP_R_NO_CIPHER_SET);
        return 0;
    }

    if (!ctx->cipher->ctrl) {
        EVPerr(EVP_F_EVP_CIPHER_CTX_CTRL, EVP_R_CTRL_NOT_IMPLEMENTED);
        return 0;
    }

    ret = ctx->cipher->ctrl(ctx, type, arg, ptr);
    if (ret == -1) {
        EVPerr(EVP_F_EVP_CIPHER_CTX_CTRL,
               EVP_R_CTRL_OPERATION_NOT_IMPLEMENTED);
        return 0;
    }
    return ret;
}
