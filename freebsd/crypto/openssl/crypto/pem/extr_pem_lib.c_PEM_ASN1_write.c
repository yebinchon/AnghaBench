
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pem_password_cb ;
typedef int i2d_of_void ;
typedef int FILE ;
typedef int EVP_CIPHER ;
typedef int BIO ;


 int BIO_NOCLOSE ;
 int BIO_free (int *) ;
 int * BIO_new (int ) ;
 int BIO_s_file () ;
 int BIO_set_fp (int *,int *,int ) ;
 int ERR_R_BUF_LIB ;
 int PEM_ASN1_write_bio (int *,char const*,int *,void*,int const*,unsigned char*,int,int *,void*) ;
 int PEM_F_PEM_ASN1_WRITE ;
 int PEMerr (int ,int ) ;

int PEM_ASN1_write(i2d_of_void *i2d, const char *name, FILE *fp,
                   void *x, const EVP_CIPHER *enc, unsigned char *kstr,
                   int klen, pem_password_cb *callback, void *u)
{
    BIO *b;
    int ret;

    if ((b = BIO_new(BIO_s_file())) == ((void*)0)) {
        PEMerr(PEM_F_PEM_ASN1_WRITE, ERR_R_BUF_LIB);
        return 0;
    }
    BIO_set_fp(b, fp, BIO_NOCLOSE);
    ret = PEM_ASN1_write_bio(i2d, name, b, x, enc, kstr, klen, callback, u);
    BIO_free(b);
    return ret;
}
