
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ parameters; int algorithm; } ;
typedef TYPE_1__ AlgorithmIdentifier ;


 int der_heim_oid_cmp (int *,int *) ;
 int heim_any_cmp (scalar_t__,scalar_t__) ;

int
_hx509_AlgorithmIdentifier_cmp(const AlgorithmIdentifier *p,
          const AlgorithmIdentifier *q)
{
    int diff;
    diff = der_heim_oid_cmp(&p->algorithm, &q->algorithm);
    if (diff)
 return diff;
    if (p->parameters) {
 if (q->parameters)
     return heim_any_cmp(p->parameters,
    q->parameters);
 else
     return 1;
    } else {
 if (q->parameters)
     return -1;
 else
     return 0;
    }
}
