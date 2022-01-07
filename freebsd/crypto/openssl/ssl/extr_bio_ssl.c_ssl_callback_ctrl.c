
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* ssl; } ;
struct TYPE_4__ {int rbio; } ;
typedef TYPE_1__ SSL ;
typedef int BIO_info_cb ;
typedef TYPE_2__ BIO_SSL ;
typedef int BIO ;



 long BIO_callback_ctrl (int ,int,int *) ;
 TYPE_2__* BIO_get_data (int *) ;

__attribute__((used)) static long ssl_callback_ctrl(BIO *b, int cmd, BIO_info_cb *fp)
{
    SSL *ssl;
    BIO_SSL *bs;
    long ret = 1;

    bs = BIO_get_data(b);
    ssl = bs->ssl;
    switch (cmd) {
    case 128:
        ret = BIO_callback_ctrl(ssl->rbio, cmd, fp);
        break;
    default:
        ret = 0;
        break;
    }
    return ret;
}
