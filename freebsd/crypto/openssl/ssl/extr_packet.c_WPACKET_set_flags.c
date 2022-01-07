
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* subs; } ;
typedef TYPE_2__ WPACKET ;
struct TYPE_4__ {unsigned int flags; } ;


 int ossl_assert (int ) ;

int WPACKET_set_flags(WPACKET *pkt, unsigned int flags)
{

    if (!ossl_assert(pkt->subs != ((void*)0)))
        return 0;

    pkt->subs->flags = flags;

    return 1;
}
