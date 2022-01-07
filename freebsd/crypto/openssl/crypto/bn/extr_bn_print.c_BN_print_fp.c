
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;
typedef int BIO ;
typedef int BIGNUM ;


 int BIO_NOCLOSE ;
 int BIO_free (int *) ;
 int * BIO_new (int ) ;
 int BIO_s_file () ;
 int BIO_set_fp (int *,int *,int ) ;
 int BN_print (int *,int const*) ;

int BN_print_fp(FILE *fp, const BIGNUM *a)
{
    BIO *b;
    int ret;

    if ((b = BIO_new(BIO_s_file())) == ((void*)0))
        return 0;
    BIO_set_fp(b, fp, BIO_NOCLOSE);
    ret = BN_print(b, a);
    BIO_free(b);
    return ret;
}
