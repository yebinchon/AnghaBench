
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pem_password_cb ;
typedef int FILE ;
typedef int EVP_PKEY ;
typedef int BIO ;


 int BIO_NOCLOSE ;
 int BIO_free (int *) ;
 int * BIO_new_fp (int *,int ) ;
 int ERR_R_BUF_LIB ;
 int PEM_F_D2I_PKCS8PRIVATEKEY_FP ;
 int PEMerr (int ,int ) ;
 int * d2i_PKCS8PrivateKey_bio (int *,int **,int *,void*) ;

EVP_PKEY *d2i_PKCS8PrivateKey_fp(FILE *fp, EVP_PKEY **x, pem_password_cb *cb,
                                 void *u)
{
    BIO *bp;
    EVP_PKEY *ret;

    if ((bp = BIO_new_fp(fp, BIO_NOCLOSE)) == ((void*)0)) {
        PEMerr(PEM_F_D2I_PKCS8PRIVATEKEY_FP, ERR_R_BUF_LIB);
        return ((void*)0);
    }
    ret = d2i_PKCS8PrivateKey_bio(bp, x, cb, u);
    BIO_free(bp);
    return ret;
}
