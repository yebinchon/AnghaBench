
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* meth; } ;
typedef int DSA_METHOD ;
typedef TYPE_1__ DSA ;



const DSA_METHOD *DSA_get_method(DSA *d)
{
    return d->meth;
}
