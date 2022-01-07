
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* parent; } ;
typedef TYPE_1__ WPACKET_SUB ;
struct TYPE_7__ {TYPE_1__* subs; } ;
typedef TYPE_2__ WPACKET ;


 int ossl_assert (int ) ;
 int wpacket_intern_close (TYPE_2__*,TYPE_1__*,int ) ;

int WPACKET_fill_lengths(WPACKET *pkt)
{
    WPACKET_SUB *sub;

    if (!ossl_assert(pkt->subs != ((void*)0)))
        return 0;

    for (sub = pkt->subs; sub != ((void*)0); sub = sub->parent) {
        if (!wpacket_intern_close(pkt, sub, 0))
            return 0;
    }

    return 1;
}
