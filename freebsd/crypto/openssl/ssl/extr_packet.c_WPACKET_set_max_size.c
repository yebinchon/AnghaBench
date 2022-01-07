
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t lenbytes; struct TYPE_4__* parent; } ;
typedef TYPE_1__ WPACKET_SUB ;
struct TYPE_5__ {size_t written; size_t maxsize; TYPE_1__* subs; } ;
typedef TYPE_2__ WPACKET ;


 size_t maxmaxsize (size_t) ;
 int ossl_assert (int ) ;

int WPACKET_set_max_size(WPACKET *pkt, size_t maxsize)
{
    WPACKET_SUB *sub;
    size_t lenbytes;


    if (!ossl_assert(pkt->subs != ((void*)0)))
        return 0;


    for (sub = pkt->subs; sub->parent != ((void*)0); sub = sub->parent)
        continue;

    lenbytes = sub->lenbytes;
    if (lenbytes == 0)
        lenbytes = sizeof(pkt->maxsize);

    if (maxmaxsize(lenbytes) < maxsize || maxsize < pkt->written)
        return 0;

    pkt->maxsize = maxsize;

    return 1;
}
