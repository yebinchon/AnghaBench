
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int i2d_of_void ;
typedef int FILE ;
typedef int BIO ;


 int ASN1_F_ASN1_I2D_FP ;
 int ASN1_i2d_bio (int *,int *,void*) ;
 int ASN1err (int ,int ) ;
 int BIO_NOCLOSE ;
 int BIO_free (int *) ;
 int * BIO_new (int ) ;
 int BIO_s_file () ;
 int BIO_set_fp (int *,int *,int ) ;
 int ERR_R_BUF_LIB ;

int ASN1_i2d_fp(i2d_of_void *i2d, FILE *out, void *x)
{
    BIO *b;
    int ret;

    if ((b = BIO_new(BIO_s_file())) == ((void*)0)) {
        ASN1err(ASN1_F_ASN1_I2D_FP, ERR_R_BUF_LIB);
        return 0;
    }
    BIO_set_fp(b, out, BIO_NOCLOSE);
    ret = ASN1_i2d_bio(i2d, b, x);
    BIO_free(b);
    return ret;
}
