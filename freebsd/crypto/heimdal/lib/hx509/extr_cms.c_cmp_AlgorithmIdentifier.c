
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int algorithm; } ;
typedef TYPE_1__ AlgorithmIdentifier ;


 int der_heim_oid_cmp (int *,int *) ;

__attribute__((used)) static int
cmp_AlgorithmIdentifier(const AlgorithmIdentifier *p, const AlgorithmIdentifier *q)
{
    return der_heim_oid_cmp(&p->algorithm, &q->algorithm);
}
