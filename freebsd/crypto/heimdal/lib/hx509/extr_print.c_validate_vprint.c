
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int va_list ;
typedef TYPE_1__* hx509_validate_ctx ;
struct TYPE_2__ {int ctx; int (* vprint_func ) (int ,char const*,int ) ;} ;


 int stub1 (int ,char const*,int ) ;

__attribute__((used)) static void
validate_vprint(void *c, const char *fmt, va_list va)
{
    hx509_validate_ctx ctx = c;
    if (ctx->vprint_func == ((void*)0))
 return;
    (ctx->vprint_func)(ctx->ctx, fmt, va);
}
