
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ASN1_VALUE ;
typedef int ASN1_ITEM ;


 scalar_t__ ASN1_item_ex_new (int **,int const*) ;

ASN1_VALUE *ASN1_item_new(const ASN1_ITEM *it)
{
    ASN1_VALUE *ret = ((void*)0);
    if (ASN1_item_ex_new(&ret, it) > 0)
        return ret;
    return ((void*)0);
}
