
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef int PKCS7_SIGNER_INFO ;
typedef int PKCS7 ;
typedef int EVP_PKEY ;
typedef int EVP_MD ;


 scalar_t__ EVP_PKEY_get_default_digest_nid (int *,int*) ;
 int * EVP_get_digestbynid (int) ;
 int PKCS7_F_PKCS7_ADD_SIGNATURE ;
 int PKCS7_R_NO_DEFAULT_DIGEST ;
 int PKCS7_SIGNER_INFO_free (int *) ;
 int * PKCS7_SIGNER_INFO_new () ;
 int PKCS7_SIGNER_INFO_set (int *,int *,int *,int const*) ;
 int PKCS7_add_signer (int *,int *) ;
 int PKCS7err (int ,int ) ;

PKCS7_SIGNER_INFO *PKCS7_add_signature(PKCS7 *p7, X509 *x509, EVP_PKEY *pkey,
                                       const EVP_MD *dgst)
{
    PKCS7_SIGNER_INFO *si = ((void*)0);

    if (dgst == ((void*)0)) {
        int def_nid;
        if (EVP_PKEY_get_default_digest_nid(pkey, &def_nid) <= 0)
            goto err;
        dgst = EVP_get_digestbynid(def_nid);
        if (dgst == ((void*)0)) {
            PKCS7err(PKCS7_F_PKCS7_ADD_SIGNATURE, PKCS7_R_NO_DEFAULT_DIGEST);
            goto err;
        }
    }

    if ((si = PKCS7_SIGNER_INFO_new()) == ((void*)0))
        goto err;
    if (!PKCS7_SIGNER_INFO_set(si, x509, pkey, dgst))
        goto err;
    if (!PKCS7_add_signer(p7, si))
        goto err;
    return si;
 err:
    PKCS7_SIGNER_INFO_free(si);
    return ((void*)0);
}
