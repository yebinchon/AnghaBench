
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef int ASN1_OCTET_STRING ;


 int ASN1_OCTET_STRING_free (int *) ;
 int * ASN1_STRING_dup (int const*) ;
 int CMS_F_CMS_SET1_KEYID ;
 int CMS_R_CERTIFICATE_HAS_NO_KEYID ;
 int CMSerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int * X509_get0_subject_key_id (int *) ;

int cms_set1_keyid(ASN1_OCTET_STRING **pkeyid, X509 *cert)
{
    ASN1_OCTET_STRING *keyid = ((void*)0);
    const ASN1_OCTET_STRING *cert_keyid;
    cert_keyid = X509_get0_subject_key_id(cert);
    if (cert_keyid == ((void*)0)) {
        CMSerr(CMS_F_CMS_SET1_KEYID, CMS_R_CERTIFICATE_HAS_NO_KEYID);
        return 0;
    }
    keyid = ASN1_STRING_dup(cert_keyid);
    if (!keyid) {
        CMSerr(CMS_F_CMS_SET1_KEYID, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    ASN1_OCTET_STRING_free(*pkeyid);
    *pkeyid = keyid;
    return 1;
}
