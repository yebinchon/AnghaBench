
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* dsa_meth; } ;
typedef TYPE_1__ ENGINE ;
typedef int DSA_METHOD ;



int ENGINE_set_DSA(ENGINE *e, const DSA_METHOD *dsa_meth)
{
    e->dsa_meth = dsa_meth;
    return 1;
}
