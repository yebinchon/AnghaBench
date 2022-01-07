
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* hx509_verify_ctx ;
typedef int hx509_context ;
struct TYPE_4__ {int max_depth; } ;


 int ENOMEM ;
 int HX509_VERIFY_MAX_DEPTH ;
 TYPE_1__* calloc (int,int) ;

int
hx509_verify_init_ctx(hx509_context context, hx509_verify_ctx *ctx)
{
    hx509_verify_ctx c;

    c = calloc(1, sizeof(*c));
    if (c == ((void*)0))
 return ENOMEM;

    c->max_depth = HX509_VERIFY_MAX_DEPTH;

    *ctx = c;

    return 0;
}
