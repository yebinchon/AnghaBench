
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t written; } ;
typedef TYPE_1__ WPACKET ;


 int ossl_assert (int ) ;

int WPACKET_get_total_written(WPACKET *pkt, size_t *written)
{

    if (!ossl_assert(written != ((void*)0)))
        return 0;

    *written = pkt->written;

    return 1;
}
