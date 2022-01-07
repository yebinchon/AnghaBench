
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hx509_validate_ctx ;


 int free (int ) ;

void
hx509_validate_ctx_free(hx509_validate_ctx ctx)
{
    free(ctx);
}
