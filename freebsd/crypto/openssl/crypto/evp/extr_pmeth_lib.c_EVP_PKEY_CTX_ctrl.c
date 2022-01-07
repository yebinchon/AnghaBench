
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int operation; TYPE_1__* pmeth; } ;
struct TYPE_5__ {int (* ctrl ) (TYPE_2__*,int,int,void*) ;int pkey_id; int * digest_custom; } ;
typedef TYPE_2__ EVP_PKEY_CTX ;


 int EVP_F_EVP_PKEY_CTX_CTRL ;
 int EVP_PKEY_OP_UNDEFINED ;
 int EVP_R_COMMAND_NOT_SUPPORTED ;
 int EVP_R_INVALID_OPERATION ;
 int EVP_R_NO_OPERATION_SET ;
 int EVPerr (int ,int ) ;
 int stub1 (TYPE_2__*,int,int,void*) ;

int EVP_PKEY_CTX_ctrl(EVP_PKEY_CTX *ctx, int keytype, int optype,
                      int cmd, int p1, void *p2)
{
    int ret;

    if (!ctx || !ctx->pmeth || !ctx->pmeth->ctrl) {
        EVPerr(EVP_F_EVP_PKEY_CTX_CTRL, EVP_R_COMMAND_NOT_SUPPORTED);
        return -2;
    }
    if ((keytype != -1) && (ctx->pmeth->pkey_id != keytype))
        return -1;


    if (ctx->pmeth->digest_custom != ((void*)0))
        goto doit;

    if (ctx->operation == EVP_PKEY_OP_UNDEFINED) {
        EVPerr(EVP_F_EVP_PKEY_CTX_CTRL, EVP_R_NO_OPERATION_SET);
        return -1;
    }

    if ((optype != -1) && !(ctx->operation & optype)) {
        EVPerr(EVP_F_EVP_PKEY_CTX_CTRL, EVP_R_INVALID_OPERATION);
        return -1;
    }

 doit:
    ret = ctx->pmeth->ctrl(ctx, cmd, p1, p2);

    if (ret == -2)
        EVPerr(EVP_F_EVP_PKEY_CTX_CTRL, EVP_R_COMMAND_NOT_SUPPORTED);

    return ret;
}
