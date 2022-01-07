
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int error; int (* verify_cb ) (int ,TYPE_1__*) ;} ;
typedef TYPE_1__ X509_STORE_CTX ;


 int stub1 (int ,TYPE_1__*) ;

__attribute__((used)) static int verify_cb_crl(X509_STORE_CTX *ctx, int err)
{
    ctx->error = err;
    return ctx->verify_cb(0, ctx);
}
