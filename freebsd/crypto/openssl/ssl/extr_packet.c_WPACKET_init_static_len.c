
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned char* staticbuf; size_t maxsize; int * buf; } ;
typedef TYPE_1__ WPACKET ;


 size_t maxmaxsize (size_t) ;
 int ossl_assert (int) ;
 int wpacket_intern_init_len (TYPE_1__*,size_t) ;

int WPACKET_init_static_len(WPACKET *pkt, unsigned char *buf, size_t len,
                            size_t lenbytes)
{
    size_t max = maxmaxsize(lenbytes);


    if (!ossl_assert(buf != ((void*)0) && len > 0))
        return 0;

    pkt->staticbuf = buf;
    pkt->buf = ((void*)0);
    pkt->maxsize = (max < len) ? max : len;

    return wpacket_intern_init_len(pkt, lenbytes);
}
