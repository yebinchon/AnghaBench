
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_3__* hx509_revoke_ctx ;
typedef int hx509_context ;
struct TYPE_6__ {int * val; scalar_t__ len; } ;
struct TYPE_7__ {int * val; scalar_t__ len; } ;
struct TYPE_8__ {int ref; TYPE_1__ ocsps; TYPE_2__ crls; } ;


 int ENOMEM ;
 TYPE_3__* calloc (int,int) ;

int
hx509_revoke_init(hx509_context context, hx509_revoke_ctx *ctx)
{
    *ctx = calloc(1, sizeof(**ctx));
    if (*ctx == ((void*)0))
 return ENOMEM;

    (*ctx)->ref = 1;
    (*ctx)->crls.len = 0;
    (*ctx)->crls.val = ((void*)0);
    (*ctx)->ocsps.len = 0;
    (*ctx)->ocsps.val = ((void*)0);

    return 0;
}
