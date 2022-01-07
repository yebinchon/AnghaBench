
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t resp_len; int * resp; } ;
struct TYPE_7__ {TYPE_1__ ocsp; } ;
struct TYPE_8__ {TYPE_2__ ext; } ;
typedef TYPE_3__ SSL ;
typedef int PACKET ;


 int ERR_R_MALLOC_FAILURE ;
 int * OPENSSL_malloc (size_t) ;
 int PACKET_copy_bytes (int *,int *,size_t) ;
 int PACKET_get_1 (int *,unsigned int*) ;
 int PACKET_get_net_3_len (int *,size_t*) ;
 size_t PACKET_remaining (int *) ;
 int SSL_AD_DECODE_ERROR ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS_PROCESS_CERT_STATUS_BODY ;
 int SSL_R_LENGTH_MISMATCH ;
 int SSL_R_UNSUPPORTED_STATUS_TYPE ;
 int SSLfatal (TYPE_3__*,int ,int ,int ) ;
 unsigned int TLSEXT_STATUSTYPE_ocsp ;

int tls_process_cert_status_body(SSL *s, PACKET *pkt)
{
    size_t resplen;
    unsigned int type;

    if (!PACKET_get_1(pkt, &type)
        || type != TLSEXT_STATUSTYPE_ocsp) {
        SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_CERT_STATUS_BODY,
                 SSL_R_UNSUPPORTED_STATUS_TYPE);
        return 0;
    }
    if (!PACKET_get_net_3_len(pkt, &resplen)
        || PACKET_remaining(pkt) != resplen) {
        SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_CERT_STATUS_BODY,
                 SSL_R_LENGTH_MISMATCH);
        return 0;
    }
    s->ext.ocsp.resp = OPENSSL_malloc(resplen);
    if (s->ext.ocsp.resp == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_CERT_STATUS_BODY,
                 ERR_R_MALLOC_FAILURE);
        return 0;
    }
    if (!PACKET_copy_bytes(pkt, s->ext.ocsp.resp, resplen)) {
        SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_CERT_STATUS_BODY,
                 SSL_R_LENGTH_MISMATCH);
        return 0;
    }
    s->ext.ocsp.resp_len = resplen;

    return 1;
}
