
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASN1_OCTET_STRING_free (void*) ;

__attribute__((used)) static void ocsp_nonce_free(void *a)
{
    ASN1_OCTET_STRING_free(a);
}
