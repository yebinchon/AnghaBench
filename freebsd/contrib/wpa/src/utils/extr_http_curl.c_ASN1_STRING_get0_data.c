
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ASN1_STRING ;


 unsigned char const* ASN1_STRING_data (int *) ;

__attribute__((used)) static const unsigned char * ASN1_STRING_get0_data(const ASN1_STRING *x)
{
 return ASN1_STRING_data((ASN1_STRING *) x);
}
