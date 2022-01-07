
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ d; int rrec; scalar_t__ numrpipes; int s; int rbuf; int * wpend_buf; scalar_t__ wpend_ret; scalar_t__ wpend_type; scalar_t__ wpend_tot; scalar_t__ handshake_fragment_len; int handshake_fragment; scalar_t__ wnum; scalar_t__ packet_length; int * packet; int rstate; } ;
typedef TYPE_1__ RECORD_LAYER ;


 int DTLS_RECORD_LAYER_clear (TYPE_1__*) ;
 int RECORD_LAYER_reset_read_sequence (TYPE_1__*) ;
 int RECORD_LAYER_reset_write_sequence (TYPE_1__*) ;
 int SSL3_BUFFER_clear (int *) ;
 int SSL3_RECORD_clear (int ,int ) ;
 int SSL_MAX_PIPELINES ;
 int SSL_ST_READ_HEADER ;
 int memset (int ,int ,int) ;
 int ssl3_release_write_buffer (int ) ;

void RECORD_LAYER_clear(RECORD_LAYER *rl)
{
    rl->rstate = SSL_ST_READ_HEADER;







    rl->packet = ((void*)0);
    rl->packet_length = 0;
    rl->wnum = 0;
    memset(rl->handshake_fragment, 0, sizeof(rl->handshake_fragment));
    rl->handshake_fragment_len = 0;
    rl->wpend_tot = 0;
    rl->wpend_type = 0;
    rl->wpend_ret = 0;
    rl->wpend_buf = ((void*)0);

    SSL3_BUFFER_clear(&rl->rbuf);
    ssl3_release_write_buffer(rl->s);
    rl->numrpipes = 0;
    SSL3_RECORD_clear(rl->rrec, SSL_MAX_PIPELINES);

    RECORD_LAYER_reset_read_sequence(rl);
    RECORD_LAYER_reset_write_sequence(rl);

    if (rl->d)
        DTLS_RECORD_LAYER_clear(rl);
}
