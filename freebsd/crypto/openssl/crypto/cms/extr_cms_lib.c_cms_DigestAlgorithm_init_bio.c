
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_ALGOR ;
typedef int EVP_MD ;
typedef int BIO ;
typedef int ASN1_OBJECT ;


 int BIO_f_md () ;
 int BIO_free (int *) ;
 int * BIO_new (int ) ;
 int BIO_set_md (int *,int const*) ;
 int CMS_F_CMS_DIGESTALGORITHM_INIT_BIO ;
 int CMS_R_MD_BIO_INIT_ERROR ;
 int CMS_R_UNKNOWN_DIGEST_ALGORITHM ;
 int CMSerr (int ,int ) ;
 int * EVP_get_digestbyobj (int const*) ;
 int X509_ALGOR_get0 (int const**,int *,int *,int *) ;

BIO *cms_DigestAlgorithm_init_bio(X509_ALGOR *digestAlgorithm)
{
    BIO *mdbio = ((void*)0);
    const ASN1_OBJECT *digestoid;
    const EVP_MD *digest;
    X509_ALGOR_get0(&digestoid, ((void*)0), ((void*)0), digestAlgorithm);
    digest = EVP_get_digestbyobj(digestoid);
    if (!digest) {
        CMSerr(CMS_F_CMS_DIGESTALGORITHM_INIT_BIO,
               CMS_R_UNKNOWN_DIGEST_ALGORITHM);
        goto err;
    }
    mdbio = BIO_new(BIO_f_md());
    if (mdbio == ((void*)0) || !BIO_set_md(mdbio, digest)) {
        CMSerr(CMS_F_CMS_DIGESTALGORITHM_INIT_BIO, CMS_R_MD_BIO_INIT_ERROR);
        goto err;
    }
    return mdbio;
 err:
    BIO_free(mdbio);
    return ((void*)0);
}
