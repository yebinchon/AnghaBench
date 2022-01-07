
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int X509 ;
typedef int WPACKET ;
struct TYPE_6__ {int max_fragment_len_mode; } ;
struct TYPE_8__ {TYPE_1__ ext; } ;
struct TYPE_7__ {TYPE_4__* session; } ;
typedef TYPE_2__ SSL ;
typedef int EXT_RETURN ;


 int ERR_R_INTERNAL_ERROR ;
 int EXT_RETURN_FAIL ;
 int EXT_RETURN_NOT_SENT ;
 int EXT_RETURN_SENT ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS_CONSTRUCT_STOC_MAXFRAGMENTLEN ;
 int SSLfatal (TYPE_2__*,int ,int ,int ) ;
 int TLSEXT_TYPE_max_fragment_length ;
 int USE_MAX_FRAGMENT_LENGTH_EXT (TYPE_4__*) ;
 int WPACKET_close (int *) ;
 int WPACKET_put_bytes_u16 (int *,int ) ;
 int WPACKET_put_bytes_u8 (int *,int ) ;
 int WPACKET_start_sub_packet_u16 (int *) ;

EXT_RETURN tls_construct_stoc_maxfragmentlen(SSL *s, WPACKET *pkt,
                                             unsigned int context, X509 *x,
                                             size_t chainidx)
{
    if (!USE_MAX_FRAGMENT_LENGTH_EXT(s->session))
        return EXT_RETURN_NOT_SENT;





    if (!WPACKET_put_bytes_u16(pkt, TLSEXT_TYPE_max_fragment_length)
        || !WPACKET_start_sub_packet_u16(pkt)
        || !WPACKET_put_bytes_u8(pkt, s->session->ext.max_fragment_len_mode)
        || !WPACKET_close(pkt)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS_CONSTRUCT_STOC_MAXFRAGMENTLEN, ERR_R_INTERNAL_ERROR);
        return EXT_RETURN_FAIL;
    }

    return EXT_RETURN_SENT;
}
