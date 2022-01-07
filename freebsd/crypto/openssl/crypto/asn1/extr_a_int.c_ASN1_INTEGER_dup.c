
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ASN1_INTEGER ;


 int * ASN1_STRING_dup (int const*) ;

ASN1_INTEGER *ASN1_INTEGER_dup(const ASN1_INTEGER *x)
{
    return ASN1_STRING_dup(x);
}
