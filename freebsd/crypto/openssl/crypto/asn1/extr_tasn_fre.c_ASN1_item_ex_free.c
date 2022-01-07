
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ASN1_VALUE ;
typedef int ASN1_ITEM ;


 int asn1_item_embed_free (int **,int const*,int ) ;

void ASN1_item_ex_free(ASN1_VALUE **pval, const ASN1_ITEM *it)
{
    asn1_item_embed_free(pval, it, 0);
}
