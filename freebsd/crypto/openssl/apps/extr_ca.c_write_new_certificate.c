
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef int BIO ;


 int PEM_write_bio_X509 (int *,int *) ;
 int X509_print (int *,int *) ;
 int i2d_X509_bio (int *,int *) ;

__attribute__((used)) static void write_new_certificate(BIO *bp, X509 *x, int output_der, int notext)
{

    if (output_der) {
        (void)i2d_X509_bio(bp, x);
        return;
    }
    if (!notext)
        X509_print(bp, x);
    PEM_write_bio_X509(bp, x);
}
