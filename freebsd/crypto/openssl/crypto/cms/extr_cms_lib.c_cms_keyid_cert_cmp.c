
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef int ASN1_OCTET_STRING ;


 int ASN1_OCTET_STRING_cmp (int *,int const*) ;
 int * X509_get0_subject_key_id (int *) ;

int cms_keyid_cert_cmp(ASN1_OCTET_STRING *keyid, X509 *cert)
{
    const ASN1_OCTET_STRING *cert_keyid = X509_get0_subject_key_id(cert);

    if (cert_keyid == ((void*)0))
        return -1;
    return ASN1_OCTET_STRING_cmp(keyid, cert_keyid);
}
