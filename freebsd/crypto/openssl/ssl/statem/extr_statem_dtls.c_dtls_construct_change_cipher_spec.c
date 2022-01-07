
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WPACKET ;
struct TYPE_6__ {scalar_t__ version; TYPE_1__* d1; } ;
struct TYPE_5__ {int handshake_write_seq; int next_handshake_write_seq; } ;
typedef TYPE_2__ SSL ;


 scalar_t__ DTLS1_BAD_VER ;
 int ERR_R_INTERNAL_ERROR ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_DTLS_CONSTRUCT_CHANGE_CIPHER_SPEC ;
 int SSLfatal (TYPE_2__*,int ,int ,int ) ;
 int WPACKET_put_bytes_u16 (int *,int ) ;

int dtls_construct_change_cipher_spec(SSL *s, WPACKET *pkt)
{
    if (s->version == DTLS1_BAD_VER) {
        s->d1->next_handshake_write_seq++;

        if (!WPACKET_put_bytes_u16(pkt, s->d1->handshake_write_seq)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_DTLS_CONSTRUCT_CHANGE_CIPHER_SPEC,
                     ERR_R_INTERNAL_ERROR);
            return 0;
        }
    }

    return 1;
}
