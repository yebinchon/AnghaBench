
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_16__ ;
typedef struct TYPE_20__ TYPE_13__ ;


typedef int pitem ;
struct TYPE_21__ {TYPE_2__* d; int rrec; } ;
struct TYPE_25__ {TYPE_16__ rlayer; } ;
struct TYPE_24__ {scalar_t__ length; } ;
struct TYPE_22__ {scalar_t__ epoch; int q; } ;
struct TYPE_20__ {scalar_t__ epoch; } ;
struct TYPE_23__ {scalar_t__ r_epoch; TYPE_1__ unprocessed_rcds; TYPE_13__ processed_rcds; } ;
typedef TYPE_3__ SSL3_RECORD ;
typedef int SSL3_BUFFER ;
typedef TYPE_4__ SSL ;
typedef int DTLS1_BITMAP ;


 int BIO_dgram_is_sctp (int ) ;
 int ERR_R_INTERNAL_ERROR ;
 int * RECORD_LAYER_get_rbuf (TYPE_16__*) ;
 TYPE_3__* RECORD_LAYER_get_rrec (TYPE_16__*) ;
 int RECORD_LAYER_reset_packet_length (TYPE_16__*) ;
 scalar_t__ SSL3_BUFFER_get_left (int *) ;
 int SSL3_RECORD_get_seq_num (int ) ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_DTLS1_PROCESS_BUFFERED_RECORDS ;
 int SSL_get_rbio (TYPE_4__*) ;
 int SSLfatal (TYPE_4__*,int ,int ,int ) ;
 scalar_t__ dtls1_buffer_record (TYPE_4__*,TYPE_13__*,int ) ;
 int * dtls1_get_bitmap (TYPE_4__*,TYPE_3__*,unsigned int*) ;
 int dtls1_get_unprocessed_record (TYPE_4__*) ;
 int dtls1_process_record (TYPE_4__*,int *) ;
 int dtls1_record_replay_check (TYPE_4__*,int *) ;
 scalar_t__ ossl_statem_in_error (TYPE_4__*) ;
 int * pqueue_peek (int ) ;

int dtls1_process_buffered_records(SSL *s)
{
    pitem *item;
    SSL3_BUFFER *rb;
    SSL3_RECORD *rr;
    DTLS1_BITMAP *bitmap;
    unsigned int is_next_epoch;
    int replayok = 1;

    item = pqueue_peek(s->rlayer.d->unprocessed_rcds.q);
    if (item) {

        if (s->rlayer.d->unprocessed_rcds.epoch != s->rlayer.d->r_epoch)
            return 1;

        rr = RECORD_LAYER_get_rrec(&s->rlayer);

        rb = RECORD_LAYER_get_rbuf(&s->rlayer);

        if (SSL3_BUFFER_get_left(rb) > 0) {






            return 1;
        }


        while (pqueue_peek(s->rlayer.d->unprocessed_rcds.q)) {
            dtls1_get_unprocessed_record(s);
            bitmap = dtls1_get_bitmap(s, rr, &is_next_epoch);
            if (bitmap == ((void*)0)) {





                 SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                          SSL_F_DTLS1_PROCESS_BUFFERED_RECORDS,
                          ERR_R_INTERNAL_ERROR);
                 return 0;
            }


            if (!BIO_dgram_is_sctp(SSL_get_rbio(s)))

            {






                replayok = dtls1_record_replay_check(s, bitmap);
            }

            if (!replayok || !dtls1_process_record(s, bitmap)) {
                if (ossl_statem_in_error(s)) {

                    return -1;
                }

                rr->length = 0;
                RECORD_LAYER_reset_packet_length(&s->rlayer);
                continue;
            }

            if (dtls1_buffer_record(s, &(s->rlayer.d->processed_rcds),
                    SSL3_RECORD_get_seq_num(s->rlayer.rrec)) < 0) {

                return 0;
            }
        }
    }





    s->rlayer.d->processed_rcds.epoch = s->rlayer.d->r_epoch;
    s->rlayer.d->unprocessed_rcds.epoch = s->rlayer.d->r_epoch + 1;

    return 1;
}
