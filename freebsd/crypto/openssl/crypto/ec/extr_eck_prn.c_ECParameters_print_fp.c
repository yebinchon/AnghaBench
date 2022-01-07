
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
 int ECParameters_print (int *,int const*) ;
 int EC_F_ECPARAMETERS_PRINT_FP ;
 int ECerr (int ,int ) ;
 int ERR_R_BIO_LIB ;

int ECParameters_print_fp(FILE *fp, const EC_KEY *x)
{
    BIO *b;
    int ret;

    if ((b = BIO_new(BIO_s_file())) == ((void*)0)) {
        ECerr(EC_F_ECPARAMETERS_PRINT_FP, ERR_R_BIO_LIB);
        return 0;
    }
    BIO_set_fp(b, fp, BIO_NOCLOSE);
    ret = ECParameters_print(b, x);
    BIO_free(b);
    return ret;
}
