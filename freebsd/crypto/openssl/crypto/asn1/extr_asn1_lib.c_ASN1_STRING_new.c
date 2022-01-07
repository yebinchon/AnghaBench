
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ASN1_STRING ;


 int * ASN1_STRING_type_new (int ) ;
 int V_ASN1_OCTET_STRING ;

ASN1_STRING *ASN1_STRING_new(void)
{
    return ASN1_STRING_type_new(V_ASN1_OCTET_STRING);
}
