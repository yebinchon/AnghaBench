
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {size_t pwritten; int flags; size_t lenbytes; size_t packet_len; int parent; } ;
typedef TYPE_1__ WPACKET_SUB ;
struct TYPE_8__ {size_t written; size_t curr; int subs; } ;
typedef TYPE_2__ WPACKET ;


 int * GETBUF (TYPE_2__*) ;
 int OPENSSL_free (TYPE_1__*) ;
 int WPACKET_FLAGS_ABANDON_ON_ZERO_LENGTH ;
 int WPACKET_FLAGS_NON_ZERO_LENGTH ;
 int put_value (int *,size_t,size_t) ;

__attribute__((used)) static int wpacket_intern_close(WPACKET *pkt, WPACKET_SUB *sub, int doclose)
{
    size_t packlen = pkt->written - sub->pwritten;

    if (packlen == 0
            && (sub->flags & WPACKET_FLAGS_NON_ZERO_LENGTH) != 0)
        return 0;

    if (packlen == 0
            && sub->flags & WPACKET_FLAGS_ABANDON_ON_ZERO_LENGTH) {

        if (!doclose)
            return 0;


        if ((pkt->curr - sub->lenbytes) == sub->packet_len) {
            pkt->written -= sub->lenbytes;
            pkt->curr -= sub->lenbytes;
        }


        sub->packet_len = 0;
        sub->lenbytes = 0;
    }


    if (sub->lenbytes > 0
                && !put_value(&GETBUF(pkt)[sub->packet_len], packlen,
                              sub->lenbytes))
            return 0;

    if (doclose) {
        pkt->subs = sub->parent;
        OPENSSL_free(sub);
    }

    return 1;
}
