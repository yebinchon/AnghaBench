
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WPACKET ;
struct TYPE_6__ {int resp_len; int resp; } ;
struct TYPE_7__ {TYPE_1__ ocsp; int status_type; } ;
struct TYPE_8__ {TYPE_2__ ext; } ;
typedef TYPE_3__ SSL ;


 int ERR_R_INTERNAL_ERROR ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS_CONSTRUCT_CERT_STATUS_BODY ;
 int SSLfatal (TYPE_3__*,int ,int ,int ) ;
 int WPACKET_put_bytes_u8 (int *,int ) ;
 int WPACKET_sub_memcpy_u24 (int *,int ,int ) ;

int tls_construct_cert_status_body(SSL *s, WPACKET *pkt)
{
    if (!WPACKET_put_bytes_u8(pkt, s->ext.status_type)
            || !WPACKET_sub_memcpy_u24(pkt, s->ext.ocsp.resp,
                                       s->ext.ocsp.resp_len)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CERT_STATUS_BODY,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    return 1;
}
