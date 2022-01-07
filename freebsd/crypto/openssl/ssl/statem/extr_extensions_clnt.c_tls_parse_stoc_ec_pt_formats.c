
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_5__ {size_t peer_ecpointformats_len; int * peer_ecpointformats; } ;
struct TYPE_6__ {TYPE_1__ ext; int hit; } ;
typedef TYPE_2__ SSL ;
typedef int PACKET ;


 int ERR_R_INTERNAL_ERROR ;
 int OPENSSL_free (int *) ;
 int * OPENSSL_malloc (size_t) ;
 int PACKET_as_length_prefixed_1 (int *,int *) ;
 int PACKET_copy_bytes (int *,int *,size_t) ;
 size_t PACKET_remaining (int *) ;
 int SSL_AD_DECODE_ERROR ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS_PARSE_STOC_EC_PT_FORMATS ;
 int SSL_R_BAD_EXTENSION ;
 int SSL_R_BAD_LENGTH ;
 int SSLfatal (TYPE_2__*,int ,int ,int ) ;

int tls_parse_stoc_ec_pt_formats(SSL *s, PACKET *pkt, unsigned int context,
                                 X509 *x, size_t chainidx)
{
    size_t ecpointformats_len;
    PACKET ecptformatlist;

    if (!PACKET_as_length_prefixed_1(pkt, &ecptformatlist)) {
        SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PARSE_STOC_EC_PT_FORMATS,
                 SSL_R_BAD_EXTENSION);
        return 0;
    }
    if (!s->hit) {
        ecpointformats_len = PACKET_remaining(&ecptformatlist);
        if (ecpointformats_len == 0) {
            SSLfatal(s, SSL_AD_DECODE_ERROR,
                     SSL_F_TLS_PARSE_STOC_EC_PT_FORMATS, SSL_R_BAD_LENGTH);
            return 0;
        }

        s->ext.peer_ecpointformats_len = 0;
        OPENSSL_free(s->ext.peer_ecpointformats);
        s->ext.peer_ecpointformats = OPENSSL_malloc(ecpointformats_len);
        if (s->ext.peer_ecpointformats == ((void*)0)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_PARSE_STOC_EC_PT_FORMATS, ERR_R_INTERNAL_ERROR);
            return 0;
        }

        s->ext.peer_ecpointformats_len = ecpointformats_len;

        if (!PACKET_copy_bytes(&ecptformatlist,
                               s->ext.peer_ecpointformats,
                               ecpointformats_len)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_PARSE_STOC_EC_PT_FORMATS, ERR_R_INTERNAL_ERROR);
            return 0;
        }
    }

    return 1;
}
