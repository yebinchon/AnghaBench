
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int * q; } ;
struct TYPE_10__ {int * q; } ;
struct TYPE_9__ {int * q; } ;
struct TYPE_13__ {TYPE_3__ buffered_app_data; TYPE_2__ processed_rcds; TYPE_1__ unprocessed_rcds; } ;
struct TYPE_12__ {TYPE_5__* d; } ;
typedef TYPE_4__ RECORD_LAYER ;
typedef TYPE_5__ DTLS_RECORD_LAYER ;


 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (TYPE_5__*) ;
 TYPE_5__* OPENSSL_malloc (int) ;
 int SSL_F_DTLS_RECORD_LAYER_NEW ;
 int SSLerr (int ,int ) ;
 int pqueue_free (int *) ;
 void* pqueue_new () ;

int DTLS_RECORD_LAYER_new(RECORD_LAYER *rl)
{
    DTLS_RECORD_LAYER *d;

    if ((d = OPENSSL_malloc(sizeof(*d))) == ((void*)0)) {
        SSLerr(SSL_F_DTLS_RECORD_LAYER_NEW, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    rl->d = d;

    d->unprocessed_rcds.q = pqueue_new();
    d->processed_rcds.q = pqueue_new();
    d->buffered_app_data.q = pqueue_new();

    if (d->unprocessed_rcds.q == ((void*)0) || d->processed_rcds.q == ((void*)0)
        || d->buffered_app_data.q == ((void*)0)) {
        pqueue_free(d->unprocessed_rcds.q);
        pqueue_free(d->processed_rcds.q);
        pqueue_free(d->buffered_app_data.q);
        OPENSSL_free(d);
        rl->d = ((void*)0);
        return 0;
    }

    return 1;
}
