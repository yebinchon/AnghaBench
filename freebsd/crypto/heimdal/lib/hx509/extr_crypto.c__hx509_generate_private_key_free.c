
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hx509_generate_private_context {int dummy; } ;


 int free (struct hx509_generate_private_context*) ;

void
_hx509_generate_private_key_free(struct hx509_generate_private_context **ctx)
{
    free(*ctx);
    *ctx = ((void*)0);
}
