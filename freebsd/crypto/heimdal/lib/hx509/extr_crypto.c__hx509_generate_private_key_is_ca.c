
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hx509_generate_private_context {int isCA; } ;
typedef int hx509_context ;



int
_hx509_generate_private_key_is_ca(hx509_context context,
      struct hx509_generate_private_context *ctx)
{
    ctx->isCA = 1;
    return 0;
}
