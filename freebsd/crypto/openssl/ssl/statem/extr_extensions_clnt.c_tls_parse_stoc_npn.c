
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_13__ {unsigned char npn_len; int * npn; } ;
struct TYPE_15__ {TYPE_4__* s3; TYPE_3__ ext; TYPE_2__* ctx; } ;
struct TYPE_14__ {int npn_seen; } ;
struct TYPE_11__ {scalar_t__ (* npn_select_cb ) (TYPE_5__*,unsigned char**,unsigned char*,int ,int ,int ) ;int npn_select_cb_arg; } ;
struct TYPE_12__ {TYPE_1__ ext; } ;
typedef TYPE_5__ SSL ;
typedef int PACKET ;


 int ERR_R_INTERNAL_ERROR ;
 int OPENSSL_free (int *) ;
 int * OPENSSL_malloc (unsigned char) ;
 int PACKET_data (int *) ;
 int PACKET_remaining (int *) ;
 int SSL_AD_HANDSHAKE_FAILURE ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_AD_UNSUPPORTED_EXTENSION ;
 int SSL_F_TLS_PARSE_STOC_NPN ;
 int SSL_IS_FIRST_HANDSHAKE (TYPE_5__*) ;
 int SSL_R_BAD_EXTENSION ;
 scalar_t__ SSL_TLSEXT_ERR_OK ;
 int SSLfatal (TYPE_5__*,int ,int ,int ) ;
 int memcpy (int *,unsigned char*,unsigned char) ;
 int ssl_next_proto_validate (TYPE_5__*,int *) ;
 scalar_t__ stub1 (TYPE_5__*,unsigned char**,unsigned char*,int ,int ,int ) ;

int tls_parse_stoc_npn(SSL *s, PACKET *pkt, unsigned int context, X509 *x,
                       size_t chainidx)
{
    unsigned char *selected;
    unsigned char selected_len;
    PACKET tmppkt;


    if (!SSL_IS_FIRST_HANDSHAKE(s))
        return 1;


    if (s->ctx->ext.npn_select_cb == ((void*)0)) {
        SSLfatal(s, SSL_AD_UNSUPPORTED_EXTENSION, SSL_F_TLS_PARSE_STOC_NPN,
                 SSL_R_BAD_EXTENSION);
        return 0;
    }


    tmppkt = *pkt;
    if (!ssl_next_proto_validate(s, &tmppkt)) {

        return 0;
    }
    if (s->ctx->ext.npn_select_cb(s, &selected, &selected_len,
                                  PACKET_data(pkt),
                                  PACKET_remaining(pkt),
                                  s->ctx->ext.npn_select_cb_arg) !=
             SSL_TLSEXT_ERR_OK) {
        SSLfatal(s, SSL_AD_HANDSHAKE_FAILURE, SSL_F_TLS_PARSE_STOC_NPN,
                 SSL_R_BAD_EXTENSION);
        return 0;
    }





    OPENSSL_free(s->ext.npn);
    s->ext.npn = OPENSSL_malloc(selected_len);
    if (s->ext.npn == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PARSE_STOC_NPN,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    memcpy(s->ext.npn, selected, selected_len);
    s->ext.npn_len = selected_len;
    s->s3->npn_seen = 1;

    return 1;
}
