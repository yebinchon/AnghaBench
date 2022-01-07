
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef int WPACKET ;
struct TYPE_7__ {TYPE_1__* session; scalar_t__ hit; } ;
struct TYPE_6__ {int timeout; } ;
typedef TYPE_2__ SSL ;


 int ERR_R_INTERNAL_ERROR ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_CREATE_TICKET_PREQUEL ;
 scalar_t__ SSL_IS_TLS13 (TYPE_2__*) ;
 int SSLfatal (TYPE_2__*,int ,int ,int ) ;
 int TICKET_NONCE_SIZE ;
 int WPACKET_put_bytes_u32 (int *,int ) ;
 int WPACKET_start_sub_packet_u16 (int *) ;
 int WPACKET_sub_memcpy_u8 (int *,unsigned char*,int ) ;

__attribute__((used)) static int create_ticket_prequel(SSL *s, WPACKET *pkt, uint32_t age_add,
                                 unsigned char *tick_nonce)
{






    if (!WPACKET_put_bytes_u32(pkt,
                               (s->hit && !SSL_IS_TLS13(s))
                               ? 0 : s->session->timeout)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_CREATE_TICKET_PREQUEL,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    if (SSL_IS_TLS13(s)) {
        if (!WPACKET_put_bytes_u32(pkt, age_add)
                || !WPACKET_sub_memcpy_u8(pkt, tick_nonce, TICKET_NONCE_SIZE)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_CREATE_TICKET_PREQUEL,
                     ERR_R_INTERNAL_ERROR);
            return 0;
        }
    }


    if (!WPACKET_start_sub_packet_u16(pkt)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_CREATE_TICKET_PREQUEL,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    return 1;
}
