
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int X509_OBJECT ;
typedef int X509_NAME ;
typedef int X509_LOOKUP_TYPE ;
struct TYPE_6__ {TYPE_1__* method; } ;
typedef TYPE_2__ X509_LOOKUP ;
struct TYPE_5__ {int (* get_by_issuer_serial ) (TYPE_2__*,int ,int *,int *,int *) ;} ;
typedef int ASN1_INTEGER ;


 int stub1 (TYPE_2__*,int ,int *,int *,int *) ;

int X509_LOOKUP_by_issuer_serial(X509_LOOKUP *ctx, X509_LOOKUP_TYPE type,
                                 X509_NAME *name, ASN1_INTEGER *serial,
                                 X509_OBJECT *ret)
{
    if ((ctx->method == ((void*)0)) || (ctx->method->get_by_issuer_serial == ((void*)0)))
        return 0;
    return ctx->method->get_by_issuer_serial(ctx, type, name, serial, ret);
}
