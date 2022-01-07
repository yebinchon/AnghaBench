
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef int WPACKET ;
struct TYPE_7__ {TYPE_1__* session; } ;
struct TYPE_6__ {int session_id_length; int session_id; } ;
typedef TYPE_2__ SSL ;


 int ERR_R_INTERNAL_ERROR ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_CONSTRUCT_STATEFUL_TICKET ;
 int SSLfatal (TYPE_2__*,int ,int ,int ) ;
 int WPACKET_close (int *) ;
 int WPACKET_memcpy (int *,int ,int ) ;
 int create_ticket_prequel (TYPE_2__*,int *,int ,unsigned char*) ;

__attribute__((used)) static int construct_stateful_ticket(SSL *s, WPACKET *pkt, uint32_t age_add,
                                     unsigned char *tick_nonce)
{
    if (!create_ticket_prequel(s, pkt, age_add, tick_nonce)) {

        return 0;
    }

    if (!WPACKET_memcpy(pkt, s->session->session_id,
                        s->session->session_id_length)
            || !WPACKET_close(pkt)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_CONSTRUCT_STATEFUL_TICKET,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    return 1;
}
