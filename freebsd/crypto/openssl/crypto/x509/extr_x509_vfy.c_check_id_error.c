
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cert; } ;
typedef TYPE_1__ X509_STORE_CTX ;


 int verify_cb_cert (TYPE_1__*,int ,int ,int) ;

__attribute__((used)) static int check_id_error(X509_STORE_CTX *ctx, int errcode)
{
    return verify_cb_cert(ctx, ctx->cert, 0, errcode);
}
