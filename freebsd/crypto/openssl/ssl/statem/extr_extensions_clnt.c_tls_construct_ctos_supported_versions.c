
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef int WPACKET ;
typedef int SSL ;
typedef int EXT_RETURN ;


 int ERR_R_INTERNAL_ERROR ;
 int EXT_RETURN_FAIL ;
 int EXT_RETURN_NOT_SENT ;
 int EXT_RETURN_SENT ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS_CONSTRUCT_CTOS_SUPPORTED_VERSIONS ;
 int SSLfatal (int *,int ,int ,int) ;
 int TLS1_3_VERSION ;
 int TLSEXT_TYPE_supported_versions ;
 int WPACKET_close (int *) ;
 int WPACKET_put_bytes_u16 (int *,int) ;
 int WPACKET_start_sub_packet_u16 (int *) ;
 int WPACKET_start_sub_packet_u8 (int *) ;
 int ssl_get_min_max_version (int *,int*,int*,int *) ;

EXT_RETURN tls_construct_ctos_supported_versions(SSL *s, WPACKET *pkt,
                                                 unsigned int context, X509 *x,
                                                 size_t chainidx)
{
    int currv, min_version, max_version, reason;

    reason = ssl_get_min_max_version(s, &min_version, &max_version, ((void*)0));
    if (reason != 0) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS_CONSTRUCT_CTOS_SUPPORTED_VERSIONS, reason);
        return EXT_RETURN_FAIL;
    }





    if (max_version < TLS1_3_VERSION)
        return EXT_RETURN_NOT_SENT;

    if (!WPACKET_put_bytes_u16(pkt, TLSEXT_TYPE_supported_versions)
            || !WPACKET_start_sub_packet_u16(pkt)
            || !WPACKET_start_sub_packet_u8(pkt)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS_CONSTRUCT_CTOS_SUPPORTED_VERSIONS,
                 ERR_R_INTERNAL_ERROR);
        return EXT_RETURN_FAIL;
    }

    for (currv = max_version; currv >= min_version; currv--) {
        if (!WPACKET_put_bytes_u16(pkt, currv)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_CTOS_SUPPORTED_VERSIONS,
                     ERR_R_INTERNAL_ERROR);
            return EXT_RETURN_FAIL;
        }
    }
    if (!WPACKET_close(pkt) || !WPACKET_close(pkt)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS_CONSTRUCT_CTOS_SUPPORTED_VERSIONS,
                 ERR_R_INTERNAL_ERROR);
        return EXT_RETURN_FAIL;
    }

    return EXT_RETURN_SENT;
}
