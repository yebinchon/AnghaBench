
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int shutdown; } ;
typedef TYPE_1__ SSL ;
typedef int BIO ;


 int BIO_CTRL_DGRAM_SCTP_SAVE_SHUTDOWN ;
 int BIO_ctrl (int *,int ,int,int *) ;
 scalar_t__ BIO_dgram_is_sctp (int *) ;
 int BIO_dgram_sctp_wait_for_dry (int *) ;
 int SSL_SENT_SHUTDOWN ;
 int * SSL_get_wbio (TYPE_1__*) ;
 int ssl3_shutdown (TYPE_1__*) ;

int dtls1_shutdown(SSL *s)
{
    int ret;

    BIO *wbio;

    wbio = SSL_get_wbio(s);
    if (wbio != ((void*)0) && BIO_dgram_is_sctp(wbio) &&
        !(s->shutdown & SSL_SENT_SHUTDOWN)) {
        ret = BIO_dgram_sctp_wait_for_dry(wbio);
        if (ret < 0)
            return -1;

        if (ret == 0)
            BIO_ctrl(SSL_get_wbio(s), BIO_CTRL_DGRAM_SCTP_SAVE_SHUTDOWN, 1,
                     ((void*)0));
    }

    ret = ssl3_shutdown(s);

    BIO_ctrl(SSL_get_wbio(s), BIO_CTRL_DGRAM_SCTP_SAVE_SHUTDOWN, 0, ((void*)0));

    return ret;
}
