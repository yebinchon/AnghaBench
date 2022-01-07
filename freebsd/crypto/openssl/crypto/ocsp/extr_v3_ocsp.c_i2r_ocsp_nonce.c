
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509V3_EXT_METHOD ;
typedef int BIO ;


 scalar_t__ BIO_printf (int *,char*,int,char*) ;
 int V_ASN1_OCTET_STRING ;
 scalar_t__ i2a_ASN1_STRING (int *,void*,int ) ;

__attribute__((used)) static int i2r_ocsp_nonce(const X509V3_EXT_METHOD *method, void *nonce,
                          BIO *out, int indent)
{
    if (BIO_printf(out, "%*s", indent, "") <= 0)
        return 0;
    if (i2a_ASN1_STRING(out, nonce, V_ASN1_OCTET_STRING) <= 0)
        return 0;
    return 1;
}
