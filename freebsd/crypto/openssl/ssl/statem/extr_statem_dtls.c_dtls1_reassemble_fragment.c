
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_13__ ;


struct hm_header_st {size_t frag_len; scalar_t__ frag_off; scalar_t__ msg_len; int seq; } ;
typedef int seq64be ;
struct TYPE_21__ {scalar_t__ data; } ;
typedef TYPE_3__ pitem ;
struct TYPE_18__ {scalar_t__ frag_len; scalar_t__ msg_len; scalar_t__ frag_off; } ;
struct TYPE_22__ {unsigned char* fragment; int * reassembly; TYPE_13__ msg_header; } ;
typedef TYPE_4__ hm_fragment ;
typedef int devnull ;
struct TYPE_23__ {TYPE_2__* d1; TYPE_1__* method; } ;
struct TYPE_20__ {int buffered_messages; } ;
struct TYPE_19__ {int (* ssl_read_bytes ) (TYPE_5__*,int ,int *,unsigned char*,int,int ,size_t*) ;} ;
typedef TYPE_5__ SSL ;


 int DTLS1_HM_FRAGMENT_RETRY ;
 int OPENSSL_free (int *) ;
 int RSMBLY_BITMASK_IS_COMPLETE (int *,long,int) ;
 int RSMBLY_BITMASK_MARK (int *,long,long) ;
 int SSL3_RT_HANDSHAKE ;
 int dtls1_hm_fragment_free (TYPE_4__*) ;
 TYPE_4__* dtls1_hm_fragment_new (scalar_t__,int) ;
 scalar_t__ dtls1_max_handshake_message_len (TYPE_5__*) ;
 int memcpy (TYPE_13__*,struct hm_header_st const*,int) ;
 int memset (unsigned char*,int ,int) ;
 int ossl_assert (int) ;
 TYPE_3__* pitem_new (unsigned char*,TYPE_4__*) ;
 TYPE_3__* pqueue_find (int ,unsigned char*) ;
 TYPE_3__* pqueue_insert (int ,TYPE_3__*) ;
 int stub1 (TYPE_5__*,int ,int *,unsigned char*,int,int ,size_t*) ;
 int stub2 (TYPE_5__*,int ,int *,unsigned char*,size_t,int ,size_t*) ;

__attribute__((used)) static int
dtls1_reassemble_fragment(SSL *s, const struct hm_header_st *msg_hdr)
{
    hm_fragment *frag = ((void*)0);
    pitem *item = ((void*)0);
    int i = -1, is_complete;
    unsigned char seq64be[8];
    size_t frag_len = msg_hdr->frag_len;
    size_t readbytes;

    if ((msg_hdr->frag_off + frag_len) > msg_hdr->msg_len ||
        msg_hdr->msg_len > dtls1_max_handshake_message_len(s))
        goto err;

    if (frag_len == 0) {
        return DTLS1_HM_FRAGMENT_RETRY;
    }


    memset(seq64be, 0, sizeof(seq64be));
    seq64be[6] = (unsigned char)(msg_hdr->seq >> 8);
    seq64be[7] = (unsigned char)msg_hdr->seq;
    item = pqueue_find(s->d1->buffered_messages, seq64be);

    if (item == ((void*)0)) {
        frag = dtls1_hm_fragment_new(msg_hdr->msg_len, 1);
        if (frag == ((void*)0))
            goto err;
        memcpy(&(frag->msg_header), msg_hdr, sizeof(*msg_hdr));
        frag->msg_header.frag_len = frag->msg_header.msg_len;
        frag->msg_header.frag_off = 0;
    } else {
        frag = (hm_fragment *)item->data;
        if (frag->msg_header.msg_len != msg_hdr->msg_len) {
            item = ((void*)0);
            frag = ((void*)0);
            goto err;
        }
    }






    if (frag->reassembly == ((void*)0)) {
        unsigned char devnull[256];

        while (frag_len) {
            i = s->method->ssl_read_bytes(s, SSL3_RT_HANDSHAKE, ((void*)0),
                                          devnull,
                                          frag_len >
                                          sizeof(devnull) ? sizeof(devnull) :
                                          frag_len, 0, &readbytes);
            if (i <= 0)
                goto err;
            frag_len -= readbytes;
        }
        return DTLS1_HM_FRAGMENT_RETRY;
    }


    i = s->method->ssl_read_bytes(s, SSL3_RT_HANDSHAKE, ((void*)0),
                                  frag->fragment + msg_hdr->frag_off,
                                  frag_len, 0, &readbytes);
    if (i <= 0 || readbytes != frag_len)
        i = -1;
    if (i <= 0)
        goto err;

    RSMBLY_BITMASK_MARK(frag->reassembly, (long)msg_hdr->frag_off,
                        (long)(msg_hdr->frag_off + frag_len));

    if (!ossl_assert(msg_hdr->msg_len > 0))
        goto err;
    RSMBLY_BITMASK_IS_COMPLETE(frag->reassembly, (long)msg_hdr->msg_len,
                               is_complete);

    if (is_complete) {
        OPENSSL_free(frag->reassembly);
        frag->reassembly = ((void*)0);
    }

    if (item == ((void*)0)) {
        item = pitem_new(seq64be, frag);
        if (item == ((void*)0)) {
            i = -1;
            goto err;
        }

        item = pqueue_insert(s->d1->buffered_messages, item);






        if (!ossl_assert(item != ((void*)0)))
            goto err;
    }

    return DTLS1_HM_FRAGMENT_RETRY;

 err:
    if (item == ((void*)0))
        dtls1_hm_fragment_free(frag);
    return -1;
}
