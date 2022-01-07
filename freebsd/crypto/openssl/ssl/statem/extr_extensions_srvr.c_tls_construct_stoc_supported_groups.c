
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef int X509 ;
typedef int WPACKET ;
struct TYPE_8__ {TYPE_1__* s3; } ;
struct TYPE_7__ {scalar_t__ group_id; } ;
typedef TYPE_2__ SSL ;
typedef int EXT_RETURN ;


 int ERR_R_INTERNAL_ERROR ;
 int EXT_RETURN_FAIL ;
 int EXT_RETURN_NOT_SENT ;
 int EXT_RETURN_SENT ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS_CONSTRUCT_STOC_SUPPORTED_GROUPS ;
 int SSL_SECOP_CURVE_SUPPORTED ;
 int SSLfatal (TYPE_2__*,int ,int ,int ) ;
 scalar_t__ TLSEXT_TYPE_supported_groups ;
 int WPACKET_close (int *) ;
 int WPACKET_put_bytes_u16 (int *,scalar_t__) ;
 int WPACKET_start_sub_packet_u16 (int *) ;
 int tls1_get_supported_groups (TYPE_2__*,scalar_t__ const**,size_t*) ;
 scalar_t__ tls_curve_allowed (TYPE_2__*,scalar_t__,int ) ;

EXT_RETURN tls_construct_stoc_supported_groups(SSL *s, WPACKET *pkt,
                                               unsigned int context, X509 *x,
                                               size_t chainidx)
{
    const uint16_t *groups;
    size_t numgroups, i, first = 1;


    if (s->s3->group_id == 0)
        return EXT_RETURN_NOT_SENT;


    tls1_get_supported_groups(s, &groups, &numgroups);
    if (numgroups == 0) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS_CONSTRUCT_STOC_SUPPORTED_GROUPS, ERR_R_INTERNAL_ERROR);
        return EXT_RETURN_FAIL;
    }


    for (i = 0; i < numgroups; i++) {
        uint16_t group = groups[i];

        if (tls_curve_allowed(s, group, SSL_SECOP_CURVE_SUPPORTED)) {
            if (first) {




                if (s->s3->group_id == group)
                    return EXT_RETURN_NOT_SENT;


                if (!WPACKET_put_bytes_u16(pkt, TLSEXT_TYPE_supported_groups)

                        || !WPACKET_start_sub_packet_u16(pkt)
                        || !WPACKET_start_sub_packet_u16(pkt)) {
                    SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                             SSL_F_TLS_CONSTRUCT_STOC_SUPPORTED_GROUPS,
                             ERR_R_INTERNAL_ERROR);
                    return EXT_RETURN_FAIL;
                }

                first = 0;
            }
            if (!WPACKET_put_bytes_u16(pkt, group)) {
                    SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                             SSL_F_TLS_CONSTRUCT_STOC_SUPPORTED_GROUPS,
                             ERR_R_INTERNAL_ERROR);
                    return EXT_RETURN_FAIL;
                }
        }
    }

    if (!WPACKET_close(pkt) || !WPACKET_close(pkt)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS_CONSTRUCT_STOC_SUPPORTED_GROUPS,
                 ERR_R_INTERNAL_ERROR);
        return EXT_RETURN_FAIL;
    }

    return EXT_RETURN_SENT;
}
