
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_NAME ;
typedef int X509 ;
typedef int OCSP_CERTID ;
typedef int EVP_MD ;
typedef int ASN1_INTEGER ;
typedef int ASN1_BIT_STRING ;


 int * EVP_sha1 () ;
 int * OCSP_cert_id_new (int const*,int *,int *,int const*) ;
 int * X509_get0_pubkey_bitstr (int const*) ;
 int * X509_get0_serialNumber (int const*) ;
 int * X509_get_issuer_name (int const*) ;
 int * X509_get_subject_name (int const*) ;

OCSP_CERTID *OCSP_cert_to_id(const EVP_MD *dgst, const X509 *subject,
                             const X509 *issuer)
{
    X509_NAME *iname;
    const ASN1_INTEGER *serial;
    ASN1_BIT_STRING *ikey;
    if (!dgst)
        dgst = EVP_sha1();
    if (subject) {
        iname = X509_get_issuer_name(subject);
        serial = X509_get0_serialNumber(subject);
    } else {
        iname = X509_get_subject_name(issuer);
        serial = ((void*)0);
    }
    ikey = X509_get0_pubkey_bitstr(issuer);
    return OCSP_cert_id_new(dgst, iname, ikey, serial);
}
