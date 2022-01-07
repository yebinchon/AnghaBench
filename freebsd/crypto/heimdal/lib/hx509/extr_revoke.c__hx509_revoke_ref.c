
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* hx509_revoke_ctx ;
struct TYPE_4__ {scalar_t__ ref; } ;


 scalar_t__ UINT_MAX ;
 int _hx509_abort (char*) ;

hx509_revoke_ctx
_hx509_revoke_ref(hx509_revoke_ctx ctx)
{
    if (ctx == ((void*)0))
 return ((void*)0);
    if (ctx->ref == 0)
 _hx509_abort("revoke ctx refcount == 0 on ref");
    ctx->ref++;
    if (ctx->ref == UINT_MAX)
 _hx509_abort("revoke ctx refcount == UINT_MAX on ref");
    return ctx;
}
