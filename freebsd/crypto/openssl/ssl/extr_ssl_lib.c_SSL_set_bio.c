
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;
typedef int BIO ;


 int BIO_up_ref (int *) ;
 int * SSL_get_rbio (int *) ;
 int * SSL_get_wbio (int *) ;
 int SSL_set0_rbio (int *,int *) ;
 int SSL_set0_wbio (int *,int *) ;

void SSL_set_bio(SSL *s, BIO *rbio, BIO *wbio)
{






    if (rbio == SSL_get_rbio(s) && wbio == SSL_get_wbio(s))
        return;





    if (rbio != ((void*)0) && rbio == wbio)
        BIO_up_ref(rbio);




    if (rbio == SSL_get_rbio(s)) {
        SSL_set0_wbio(s, wbio);
        return;
    }





    if (wbio == SSL_get_wbio(s) && SSL_get_rbio(s) != SSL_get_wbio(s)) {
        SSL_set0_rbio(s, rbio);
        return;
    }


    SSL_set0_rbio(s, rbio);
    SSL_set0_wbio(s, wbio);
}
