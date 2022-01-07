
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * key_oid; } ;
typedef TYPE_1__ hx509_private_key_ops ;
typedef int heim_oid ;


 scalar_t__ der_heim_oid_cmp (int *,int const*) ;
 TYPE_1__** private_algs ;

hx509_private_key_ops *
hx509_find_private_alg(const heim_oid *oid)
{
    int i;
    for (i = 0; private_algs[i]; i++) {
 if (private_algs[i]->key_oid == ((void*)0))
     continue;
 if (der_heim_oid_cmp(private_algs[i]->key_oid, oid) == 0)
     return private_algs[i];
    }
    return ((void*)0);
}
