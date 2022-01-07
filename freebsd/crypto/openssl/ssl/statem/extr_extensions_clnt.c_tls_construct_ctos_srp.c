
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int X509 ;
typedef int WPACKET ;
struct TYPE_5__ {int * login; } ;
struct TYPE_6__ {TYPE_1__ srp_ctx; } ;
typedef TYPE_2__ SSL ;
typedef int EXT_RETURN ;


 int ERR_R_INTERNAL_ERROR ;
 int EXT_RETURN_FAIL ;
 int EXT_RETURN_NOT_SENT ;
 int EXT_RETURN_SENT ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS_CONSTRUCT_CTOS_SRP ;
 int SSLfatal (TYPE_2__*,int ,int ,int ) ;
 int TLSEXT_TYPE_srp ;
 int WPACKET_FLAGS_NON_ZERO_LENGTH ;
 int WPACKET_close (int *) ;
 int WPACKET_memcpy (int *,int *,int ) ;
 int WPACKET_put_bytes_u16 (int *,int ) ;
 int WPACKET_set_flags (int *,int ) ;
 int WPACKET_start_sub_packet_u16 (int *) ;
 int WPACKET_start_sub_packet_u8 (int *) ;
 int strlen (int *) ;

EXT_RETURN tls_construct_ctos_srp(SSL *s, WPACKET *pkt, unsigned int context,
                                  X509 *x, size_t chainidx)
{

    if (s->srp_ctx.login == ((void*)0))
        return EXT_RETURN_NOT_SENT;

    if (!WPACKET_put_bytes_u16(pkt, TLSEXT_TYPE_srp)

            || !WPACKET_start_sub_packet_u16(pkt)
            || !WPACKET_start_sub_packet_u8(pkt)

            || !WPACKET_set_flags(pkt, WPACKET_FLAGS_NON_ZERO_LENGTH)
            || !WPACKET_memcpy(pkt, s->srp_ctx.login,
                               strlen(s->srp_ctx.login))
            || !WPACKET_close(pkt)
            || !WPACKET_close(pkt)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CTOS_SRP,
                 ERR_R_INTERNAL_ERROR);
        return EXT_RETURN_FAIL;
    }

    return EXT_RETURN_SENT;
}
