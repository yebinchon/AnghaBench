
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_8__ {scalar_t__ early_data_ok; } ;
struct TYPE_12__ {TYPE_4__* s3; TYPE_3__* session; int hit; TYPE_1__ ext; } ;
struct TYPE_11__ {size_t alpn_selected_len; int * alpn_selected; int alpn_sent; } ;
struct TYPE_9__ {size_t alpn_selected_len; int * alpn_selected; } ;
struct TYPE_10__ {TYPE_2__ ext; } ;
typedef TYPE_5__ SSL ;
typedef int PACKET ;


 int ERR_R_INTERNAL_ERROR ;
 int OPENSSL_free (int *) ;
 int * OPENSSL_malloc (size_t) ;
 int * OPENSSL_memdup (int *,size_t) ;
 int PACKET_copy_bytes (int *,int *,size_t) ;
 int PACKET_get_1_len (int *,size_t*) ;
 int PACKET_get_net_2_len (int *,size_t*) ;
 size_t PACKET_remaining (int *) ;
 int SSL_AD_DECODE_ERROR ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_AD_UNSUPPORTED_EXTENSION ;
 int SSL_F_TLS_PARSE_STOC_ALPN ;
 int SSL_R_BAD_EXTENSION ;
 int SSLfatal (TYPE_5__*,int ,int ,int ) ;
 scalar_t__ memcmp (int *,int *,size_t) ;
 int ossl_assert (int ) ;

int tls_parse_stoc_alpn(SSL *s, PACKET *pkt, unsigned int context, X509 *x,
                        size_t chainidx)
{
    size_t len;


    if (!s->s3->alpn_sent) {
        SSLfatal(s, SSL_AD_UNSUPPORTED_EXTENSION, SSL_F_TLS_PARSE_STOC_ALPN,
                 SSL_R_BAD_EXTENSION);
        return 0;
    }






    if (!PACKET_get_net_2_len(pkt, &len)
        || PACKET_remaining(pkt) != len || !PACKET_get_1_len(pkt, &len)
        || PACKET_remaining(pkt) != len) {
        SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PARSE_STOC_ALPN,
                 SSL_R_BAD_EXTENSION);
        return 0;
    }
    OPENSSL_free(s->s3->alpn_selected);
    s->s3->alpn_selected = OPENSSL_malloc(len);
    if (s->s3->alpn_selected == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PARSE_STOC_ALPN,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }
    if (!PACKET_copy_bytes(pkt, s->s3->alpn_selected, len)) {
        SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PARSE_STOC_ALPN,
                 SSL_R_BAD_EXTENSION);
        return 0;
    }
    s->s3->alpn_selected_len = len;

    if (s->session->ext.alpn_selected == ((void*)0)
            || s->session->ext.alpn_selected_len != len
            || memcmp(s->session->ext.alpn_selected, s->s3->alpn_selected, len)
               != 0) {

        s->ext.early_data_ok = 0;
    }
    if (!s->hit) {




        if (!ossl_assert(s->session->ext.alpn_selected == ((void*)0))) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PARSE_STOC_ALPN,
                     ERR_R_INTERNAL_ERROR);
            return 0;
        }
        s->session->ext.alpn_selected =
            OPENSSL_memdup(s->s3->alpn_selected, s->s3->alpn_selected_len);
        if (s->session->ext.alpn_selected == ((void*)0)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PARSE_STOC_ALPN,
                     ERR_R_INTERNAL_ERROR);
            return 0;
        }
        s->session->ext.alpn_selected_len = s->s3->alpn_selected_len;
    }

    return 1;
}
