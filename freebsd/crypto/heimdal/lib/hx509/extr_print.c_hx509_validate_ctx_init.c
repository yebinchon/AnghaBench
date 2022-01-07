
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * hx509_validate_ctx ;
typedef int hx509_context ;


 int ENOMEM ;
 int * malloc (int) ;
 int memset (int *,int ,int) ;

int
hx509_validate_ctx_init(hx509_context context, hx509_validate_ctx *ctx)
{
    *ctx = malloc(sizeof(**ctx));
    if (*ctx == ((void*)0))
 return ENOMEM;
    memset(*ctx, 0, sizeof(**ctx));
    return 0;
}
