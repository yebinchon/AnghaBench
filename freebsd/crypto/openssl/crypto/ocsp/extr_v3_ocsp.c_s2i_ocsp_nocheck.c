
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509V3_EXT_METHOD ;
typedef int X509V3_CTX ;


 void* ASN1_NULL_new () ;

__attribute__((used)) static void *s2i_ocsp_nocheck(const X509V3_EXT_METHOD *method,
                              X509V3_CTX *ctx, const char *str)
{
    return ASN1_NULL_new();
}
