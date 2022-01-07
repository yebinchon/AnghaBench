
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* method; } ;
typedef TYPE_2__ X509_LOOKUP ;
struct TYPE_6__ {int (* free ) (TYPE_2__*) ;} ;


 int OPENSSL_free (TYPE_2__*) ;
 int stub1 (TYPE_2__*) ;

void X509_LOOKUP_free(X509_LOOKUP *ctx)
{
    if (ctx == ((void*)0))
        return;
    if ((ctx->method != ((void*)0)) && (ctx->method->free != ((void*)0)))
        (*ctx->method->free) (ctx);
    OPENSSL_free(ctx);
}
