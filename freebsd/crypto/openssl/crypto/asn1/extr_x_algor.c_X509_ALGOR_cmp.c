
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int parameter; int algorithm; } ;
typedef TYPE_1__ X509_ALGOR ;


 int ASN1_TYPE_cmp (int ,int ) ;
 int OBJ_cmp (int ,int ) ;

int X509_ALGOR_cmp(const X509_ALGOR *a, const X509_ALGOR *b)
{
    int rv;
    rv = OBJ_cmp(a->algorithm, b->algorithm);
    if (rv)
        return rv;
    if (!a->parameter && !b->parameter)
        return 0;
    return ASN1_TYPE_cmp(a->parameter, b->parameter);
}
