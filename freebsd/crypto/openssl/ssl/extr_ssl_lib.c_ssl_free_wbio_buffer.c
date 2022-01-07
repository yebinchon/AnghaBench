
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * bbio; int wbio; } ;
typedef TYPE_1__ SSL ;


 int BIO_free (int *) ;
 int BIO_pop (int ) ;

int ssl_free_wbio_buffer(SSL *s)
{

    if (s->bbio == ((void*)0))
        return 1;

    s->wbio = BIO_pop(s->wbio);
    BIO_free(s->bbio);
    s->bbio = ((void*)0);

    return 1;
}
