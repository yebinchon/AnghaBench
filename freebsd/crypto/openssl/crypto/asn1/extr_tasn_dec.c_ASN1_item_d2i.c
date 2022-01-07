
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ASN1_VALUE ;
typedef int ASN1_TLC ;
typedef int ASN1_ITEM ;


 scalar_t__ ASN1_item_ex_d2i (int **,unsigned char const**,long,int const*,int,int ,int ,int *) ;
 int asn1_tlc_clear_nc (int *) ;

ASN1_VALUE *ASN1_item_d2i(ASN1_VALUE **pval,
                          const unsigned char **in, long len,
                          const ASN1_ITEM *it)
{
    ASN1_TLC c;
    ASN1_VALUE *ptmpval = ((void*)0);
    if (!pval)
        pval = &ptmpval;
    asn1_tlc_clear_nc(&c);
    if (ASN1_item_ex_d2i(pval, in, len, it, -1, 0, 0, &c) > 0)
        return *pval;
    return ((void*)0);
}
