
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* method; } ;
typedef TYPE_2__ X509_LOOKUP ;
struct TYPE_5__ {int (* ctrl ) (TYPE_2__*,int,char const*,long,char**) ;} ;


 int stub1 (TYPE_2__*,int,char const*,long,char**) ;

int X509_LOOKUP_ctrl(X509_LOOKUP *ctx, int cmd, const char *argc, long argl,
                     char **ret)
{
    if (ctx->method == ((void*)0))
        return -1;
    if (ctx->method->ctrl != ((void*)0))
        return ctx->method->ctrl(ctx, cmd, argc, argl, ret);
    else
        return 1;
}
