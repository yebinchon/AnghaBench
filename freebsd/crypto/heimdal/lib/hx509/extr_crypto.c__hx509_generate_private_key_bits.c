
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hx509_generate_private_context {unsigned long num_bits; } ;
typedef int hx509_context ;



int
_hx509_generate_private_key_bits(hx509_context context,
     struct hx509_generate_private_context *ctx,
     unsigned long bits)
{
    ctx->num_bits = bits;
    return 0;
}
