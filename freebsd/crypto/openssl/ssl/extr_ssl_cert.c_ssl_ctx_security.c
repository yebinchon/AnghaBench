
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* cert; } ;
struct TYPE_5__ {int (* sec_cb ) (int *,TYPE_2__ const*,int,int,int,void*,int ) ;int sec_ex; } ;
typedef TYPE_2__ SSL_CTX ;


 int stub1 (int *,TYPE_2__ const*,int,int,int,void*,int ) ;

int ssl_ctx_security(const SSL_CTX *ctx, int op, int bits, int nid, void *other)
{
    return ctx->cert->sec_cb(((void*)0), ctx, op, bits, nid, other,
                             ctx->cert->sec_ex);
}
