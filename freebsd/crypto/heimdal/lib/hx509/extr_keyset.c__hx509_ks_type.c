
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct hx509_keyset_ops {int name; } ;
typedef TYPE_1__* hx509_context ;
struct TYPE_3__ {int ks_num_ops; struct hx509_keyset_ops** ks_ops; } ;


 scalar_t__ strcasecmp (char const*,int ) ;

__attribute__((used)) static struct hx509_keyset_ops *
_hx509_ks_type(hx509_context context, const char *type)
{
    int i;

    for (i = 0; i < context->ks_num_ops; i++)
 if (strcasecmp(type, context->ks_ops[i]->name) == 0)
     return context->ks_ops[i];

    return ((void*)0);
}
