
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;
typedef int EC_KEY ;
typedef int BIO ;


 int BIO_NOCLOSE ;
 int BIO_free (int *) ;
 int * BIO_new (int ) ;
 int BIO_s_file () ;
 int BIO_set_fp (int *,int *,int ) ;
 int EC_F_EC_KEY_PRINT_FP ;
 int EC_KEY_print (int *,int const*,int) ;
 int ECerr (int ,int ) ;
 int ERR_R_BIO_LIB ;

int EC_KEY_print_fp(FILE *fp, const EC_KEY *x, int off)
{
    BIO *b;
    int ret;

    if ((b = BIO_new(BIO_s_file())) == ((void*)0)) {
        ECerr(EC_F_EC_KEY_PRINT_FP, ERR_R_BIO_LIB);
        return 0;
    }
    BIO_set_fp(b, fp, BIO_NOCLOSE);
    ret = EC_KEY_print(b, x, off);
    BIO_free(b);
    return ret;
}
