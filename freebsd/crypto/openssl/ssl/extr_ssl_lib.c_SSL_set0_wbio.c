
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * wbio; int * bbio; } ;
typedef TYPE_1__ SSL ;
typedef int BIO ;


 int BIO_free_all (int *) ;
 int * BIO_pop (int *) ;
 int * BIO_push (int *,int *) ;

void SSL_set0_wbio(SSL *s, BIO *wbio)
{



    if (s->bbio != ((void*)0))
        s->wbio = BIO_pop(s->wbio);

    BIO_free_all(s->wbio);
    s->wbio = wbio;


    if (s->bbio != ((void*)0))
        s->wbio = BIO_push(s->bbio, s->wbio);
}
