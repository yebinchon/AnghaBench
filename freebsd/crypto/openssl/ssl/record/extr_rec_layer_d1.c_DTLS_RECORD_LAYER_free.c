
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int q; } ;
struct TYPE_9__ {int q; } ;
struct TYPE_8__ {int q; } ;
struct TYPE_12__ {TYPE_3__ buffered_app_data; TYPE_2__ processed_rcds; TYPE_1__ unprocessed_rcds; } ;
struct TYPE_11__ {TYPE_5__* d; } ;
typedef TYPE_4__ RECORD_LAYER ;


 int DTLS_RECORD_LAYER_clear (TYPE_4__*) ;
 int OPENSSL_free (TYPE_5__*) ;
 int pqueue_free (int ) ;

void DTLS_RECORD_LAYER_free(RECORD_LAYER *rl)
{
    DTLS_RECORD_LAYER_clear(rl);
    pqueue_free(rl->d->unprocessed_rcds.q);
    pqueue_free(rl->d->processed_rcds.q);
    pqueue_free(rl->d->buffered_app_data.q);
    OPENSSL_free(rl->d);
    rl->d = ((void*)0);
}
