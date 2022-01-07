
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rwstate; int wbio; } ;
typedef TYPE_1__ SSL ;


 scalar_t__ BIO_flush (int ) ;
 int SSL_NOTHING ;
 int SSL_WRITING ;

int statem_flush(SSL *s)
{
    s->rwstate = SSL_WRITING;
    if (BIO_flush(s->wbio) <= 0) {
        return 0;
    }
    s->rwstate = SSL_NOTHING;

    return 1;
}
