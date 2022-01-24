#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct hm_header_st {size_t frag_len; size_t frag_off; size_t msg_len; int seq; scalar_t__ type; } ;
typedef  int /*<<< orphan*/  seq64be ;
typedef  int /*<<< orphan*/  pitem ;
struct TYPE_15__ {unsigned char* fragment; int /*<<< orphan*/  msg_header; } ;
typedef  TYPE_3__ hm_fragment ;
typedef  int /*<<< orphan*/  devnull ;
struct TYPE_16__ {TYPE_2__* d1; TYPE_1__* method; } ;
struct TYPE_14__ {int handshake_read_seq; int /*<<< orphan*/  buffered_messages; } ;
struct TYPE_13__ {int (* ssl_read_bytes ) (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char*,int,int /*<<< orphan*/ ,size_t*) ;} ;
typedef  TYPE_4__ SSL ;

/* Variables and functions */
 int DTLS1_HM_FRAGMENT_RETRY ; 
 scalar_t__ SSL3_MT_FINISHED ; 
 int /*<<< orphan*/  SSL3_RT_HANDSHAKE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 TYPE_3__* FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (TYPE_4__*) ; 
 int FUNC3 (TYPE_4__*,struct hm_header_st const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct hm_header_st const*,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (unsigned char*,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char*,int,int /*<<< orphan*/ ,size_t*) ; 
 int FUNC11 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char*,size_t,int /*<<< orphan*/ ,size_t*) ; 

__attribute__((used)) static int
FUNC12(SSL *s, const struct hm_header_st *msg_hdr)
{
    int i = -1;
    hm_fragment *frag = NULL;
    pitem *item = NULL;
    unsigned char seq64be[8];
    size_t frag_len = msg_hdr->frag_len;
    size_t readbytes;

    if ((msg_hdr->frag_off + frag_len) > msg_hdr->msg_len)
        goto err;

    /* Try to find item in queue, to prevent duplicate entries */
    FUNC5(seq64be, 0, sizeof(seq64be));
    seq64be[6] = (unsigned char)(msg_hdr->seq >> 8);
    seq64be[7] = (unsigned char)msg_hdr->seq;
    item = FUNC8(s->d1->buffered_messages, seq64be);

    /*
     * If we already have an entry and this one is a fragment, don't discard
     * it and rather try to reassemble it.
     */
    if (item != NULL && frag_len != msg_hdr->msg_len)
        item = NULL;

    /*
     * Discard the message if sequence number was already there, is too far
     * in the future, already in the queue or if we received a FINISHED
     * before the SERVER_HELLO, which then must be a stale retransmit.
     */
    if (msg_hdr->seq <= s->d1->handshake_read_seq ||
        msg_hdr->seq > s->d1->handshake_read_seq + 10 || item != NULL ||
        (s->d1->handshake_read_seq == 0 && msg_hdr->type == SSL3_MT_FINISHED)) {
        unsigned char devnull[256];

        while (frag_len) {
            i = s->method->ssl_read_bytes(s, SSL3_RT_HANDSHAKE, NULL,
                                          devnull,
                                          frag_len >
                                          sizeof(devnull) ? sizeof(devnull) :
                                          frag_len, 0, &readbytes);
            if (i <= 0)
                goto err;
            frag_len -= readbytes;
        }
    } else {
        if (frag_len != msg_hdr->msg_len) {
            return FUNC3(s, msg_hdr);
        }

        if (frag_len > FUNC2(s))
            goto err;

        frag = FUNC1(frag_len, 0);
        if (frag == NULL)
            goto err;

        FUNC4(&(frag->msg_header), msg_hdr, sizeof(*msg_hdr));

        if (frag_len) {
            /*
             * read the body of the fragment (header has already been read
             */
            i = s->method->ssl_read_bytes(s, SSL3_RT_HANDSHAKE, NULL,
                                          frag->fragment, frag_len, 0,
                                          &readbytes);
            if (i<=0 || readbytes != frag_len)
                i = -1;
            if (i <= 0)
                goto err;
        }

        item = FUNC7(seq64be, frag);
        if (item == NULL)
            goto err;

        item = FUNC9(s->d1->buffered_messages, item);
        /*
         * pqueue_insert fails iff a duplicate item is inserted. However,
         * |item| cannot be a duplicate. If it were, |pqueue_find|, above,
         * would have returned it. Then, either |frag_len| !=
         * |msg_hdr->msg_len| in which case |item| is set to NULL and it will
         * have been processed with |dtls1_reassemble_fragment|, above, or
         * the record will have been discarded.
         */
        if (!FUNC6(item != NULL))
            goto err;
    }

    return DTLS1_HM_FRAGMENT_RETRY;

 err:
    if (item == NULL)
        FUNC0(frag);
    return 0;
}