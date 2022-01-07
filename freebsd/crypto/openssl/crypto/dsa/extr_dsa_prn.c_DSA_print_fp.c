
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;
typedef int DSA ;
typedef int BIO ;


 int BIO_NOCLOSE ;
 int BIO_free (int *) ;
 int * BIO_new (int ) ;
 int BIO_s_file () ;
 int BIO_set_fp (int *,int *,int ) ;
 int DSA_F_DSA_PRINT_FP ;
 int DSA_print (int *,int const*,int) ;
 int DSAerr (int ,int ) ;
 int ERR_R_BUF_LIB ;

int DSA_print_fp(FILE *fp, const DSA *x, int off)
{
    BIO *b;
    int ret;

    if ((b = BIO_new(BIO_s_file())) == ((void*)0)) {
        DSAerr(DSA_F_DSA_PRINT_FP, ERR_R_BUF_LIB);
        return 0;
    }
    BIO_set_fp(b, fp, BIO_NOCLOSE);
    ret = DSA_print(b, x, off);
    BIO_free(b);
    return ret;
}
