
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {void (* info_callback ) (TYPE_3__ const*,int,int) ;TYPE_2__* s3; TYPE_1__* ctx; int msg_callback_arg; int version; int (* msg_callback ) (int,int ,int ,int*,int,TYPE_3__ const*,int ) ;int wbio; } ;
struct TYPE_9__ {int alert_dispatch; int* send_alert; } ;
struct TYPE_8__ {void (* info_callback ) (TYPE_3__ const*,int,int) ;} ;
typedef TYPE_3__ const SSL ;


 int BIO_flush (int ) ;
 int SSL3_RT_ALERT ;
 int SSL_CB_WRITE_ALERT ;
 int do_ssl3_write (TYPE_3__ const*,int ,int*,size_t*,int,int ,size_t*) ;
 int stub1 (int,int ,int ,int*,int,TYPE_3__ const*,int ) ;

int ssl3_dispatch_alert(SSL *s)
{
    int i, j;
    size_t alertlen;
    void (*cb) (const SSL *ssl, int type, int val) = ((void*)0);
    size_t written;

    s->s3->alert_dispatch = 0;
    alertlen = 2;
    i = do_ssl3_write(s, SSL3_RT_ALERT, &s->s3->send_alert[0], &alertlen, 1, 0,
                      &written);
    if (i <= 0) {
        s->s3->alert_dispatch = 1;
    } else {




        (void)BIO_flush(s->wbio);

        if (s->msg_callback)
            s->msg_callback(1, s->version, SSL3_RT_ALERT, s->s3->send_alert,
                            2, s, s->msg_callback_arg);

        if (s->info_callback != ((void*)0))
            cb = s->info_callback;
        else if (s->ctx->info_callback != ((void*)0))
            cb = s->ctx->info_callback;

        if (cb != ((void*)0)) {
            j = (s->s3->send_alert[0] << 8) | s->s3->send_alert[1];
            cb(s, SSL_CB_WRITE_ALERT, j);
        }
    }
    return i;
}
