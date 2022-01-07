
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ASN1_ITEM ;


 int const* ASN1_ITEM_ptr (int ) ;
 size_t OSSL_NELEM (int *) ;
 int * asn1_item_list ;

const ASN1_ITEM *ASN1_ITEM_get(size_t i)
{
    if (i >= OSSL_NELEM(asn1_item_list))
        return ((void*)0);
    return ASN1_ITEM_ptr(asn1_item_list[i]);
}
