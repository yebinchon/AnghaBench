
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ASN1_OCTET_STRING ;


 int ASN1_STRING_set (int *,unsigned char const*,int) ;

int ASN1_OCTET_STRING_set(ASN1_OCTET_STRING *x, const unsigned char *d,
                          int len)
{
    return ASN1_STRING_set(x, d, len);
}
