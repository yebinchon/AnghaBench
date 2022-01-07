
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* ASN1_OCTET_STRING_new () ;

__attribute__((used)) static void *ocsp_nonce_new(void)
{
    return ASN1_OCTET_STRING_new();
}
