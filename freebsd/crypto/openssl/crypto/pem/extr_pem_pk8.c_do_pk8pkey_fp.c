
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pem_password_cb ;
typedef int FILE ;
typedef int EVP_PKEY ;
typedef int EVP_CIPHER ;
typedef int BIO ;


 int BIO_NOCLOSE ;
 int BIO_free (int *) ;
 int * BIO_new_fp (int *,int ) ;
 int ERR_R_BUF_LIB ;
 int PEM_F_DO_PK8PKEY_FP ;
 int PEMerr (int ,int ) ;
 int do_pk8pkey (int *,int *,int,int,int const*,char*,int,int *,void*) ;

__attribute__((used)) static int do_pk8pkey_fp(FILE *fp, EVP_PKEY *x, int isder, int nid,
                         const EVP_CIPHER *enc, char *kstr, int klen,
                         pem_password_cb *cb, void *u)
{
    BIO *bp;
    int ret;

    if ((bp = BIO_new_fp(fp, BIO_NOCLOSE)) == ((void*)0)) {
        PEMerr(PEM_F_DO_PK8PKEY_FP, ERR_R_BUF_LIB);
        return 0;
    }
    ret = do_pk8pkey(bp, x, isder, nid, enc, kstr, klen, cb, u);
    BIO_free(bp);
    return ret;
}
