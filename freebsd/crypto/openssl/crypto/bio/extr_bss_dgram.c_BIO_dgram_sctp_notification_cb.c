
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {void (* handle_notifications ) (TYPE_1__*,void*,void*) ;void* notification_context; } ;
typedef TYPE_2__ bio_dgram_sctp_data ;
struct TYPE_6__ {scalar_t__ ptr; } ;
typedef TYPE_1__ BIO ;



int BIO_dgram_sctp_notification_cb(BIO *b,
                                   void (*handle_notifications) (BIO *bio,
                                                                 void
                                                                 *context,
                                                                 void *buf),
                                   void *context)
{
    bio_dgram_sctp_data *data = (bio_dgram_sctp_data *) b->ptr;

    if (handle_notifications != ((void*)0)) {
        data->handle_notifications = handle_notifications;
        data->notification_context = context;
    } else
        return -1;

    return 0;
}
