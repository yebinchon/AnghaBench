
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t maxsize; size_t written; TYPE_4__* buf; int * staticbuf; int * subs; } ;
typedef TYPE_1__ WPACKET ;
struct TYPE_6__ {size_t length; } ;


 scalar_t__ BUF_MEM_grow (TYPE_4__*,size_t) ;
 size_t DEFAULT_BUF_SIZE ;
 int SIZE_MAX ;
 unsigned char* WPACKET_get_curr (TYPE_1__*) ;
 int ossl_assert (int) ;

int WPACKET_reserve_bytes(WPACKET *pkt, size_t len, unsigned char **allocbytes)
{

    if (!ossl_assert(pkt->subs != ((void*)0) && len != 0))
        return 0;

    if (pkt->maxsize - pkt->written < len)
        return 0;

    if (pkt->staticbuf == ((void*)0) && (pkt->buf->length - pkt->written < len)) {
        size_t newlen;
        size_t reflen;

        reflen = (len > pkt->buf->length) ? len : pkt->buf->length;

        if (reflen > SIZE_MAX / 2) {
            newlen = SIZE_MAX;
        } else {
            newlen = reflen * 2;
            if (newlen < DEFAULT_BUF_SIZE)
                newlen = DEFAULT_BUF_SIZE;
        }
        if (BUF_MEM_grow(pkt->buf, newlen) == 0)
            return 0;
    }
    if (allocbytes != ((void*)0))
        *allocbytes = WPACKET_get_curr(pkt);

    return 1;
}
