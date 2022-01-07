
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* hx509_name ;
struct TYPE_4__ {int der_name; } ;


 int _hx509_name_cmp (int *,int *,int*) ;

int
hx509_name_cmp(hx509_name n1, hx509_name n2)
{
    int ret, diff;
    ret = _hx509_name_cmp(&n1->der_name, &n2->der_name, &diff);
    if (ret)
 return ret;
    return diff;
}
