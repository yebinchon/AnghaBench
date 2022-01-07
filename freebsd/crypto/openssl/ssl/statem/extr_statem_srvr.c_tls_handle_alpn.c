
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ early_data_ok; } ;
struct TYPE_17__ {TYPE_6__ ext; TYPE_5__* session; int hit; TYPE_3__* s3; TYPE_2__* ctx; } ;
struct TYPE_14__ {unsigned char alpn_selected_len; int * alpn_selected; } ;
struct TYPE_15__ {TYPE_4__ ext; } ;
struct TYPE_13__ {unsigned char alpn_selected_len; scalar_t__ npn_seen; int * alpn_selected; scalar_t__ alpn_proposed_len; int * alpn_proposed; } ;
struct TYPE_11__ {int (* alpn_select_cb ) (TYPE_7__*,unsigned char const**,unsigned char*,int *,unsigned int,int ) ;int alpn_select_cb_arg; } ;
struct TYPE_12__ {TYPE_1__ ext; } ;
typedef TYPE_7__ SSL ;


 int ERR_R_INTERNAL_ERROR ;
 int OPENSSL_free (int *) ;
 void* OPENSSL_memdup (unsigned char const*,unsigned char) ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_AD_NO_APPLICATION_PROTOCOL ;
 int SSL_F_TLS_HANDLE_ALPN ;
 int SSL_R_NO_APPLICATION_PROTOCOL ;
 int SSL_TLSEXT_ERR_NOACK ;
 int SSL_TLSEXT_ERR_OK ;
 int SSLfatal (TYPE_7__*,int ,int ,int ) ;
 scalar_t__ memcmp (unsigned char const*,int *,unsigned char) ;
 int ossl_assert (int ) ;
 int stub1 (TYPE_7__*,unsigned char const**,unsigned char*,int *,unsigned int,int ) ;

int tls_handle_alpn(SSL *s)
{
    const unsigned char *selected = ((void*)0);
    unsigned char selected_len = 0;

    if (s->ctx->ext.alpn_select_cb != ((void*)0) && s->s3->alpn_proposed != ((void*)0)) {
        int r = s->ctx->ext.alpn_select_cb(s, &selected, &selected_len,
                                           s->s3->alpn_proposed,
                                           (unsigned int)s->s3->alpn_proposed_len,
                                           s->ctx->ext.alpn_select_cb_arg);

        if (r == SSL_TLSEXT_ERR_OK) {
            OPENSSL_free(s->s3->alpn_selected);
            s->s3->alpn_selected = OPENSSL_memdup(selected, selected_len);
            if (s->s3->alpn_selected == ((void*)0)) {
                SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_HANDLE_ALPN,
                         ERR_R_INTERNAL_ERROR);
                return 0;
            }
            s->s3->alpn_selected_len = selected_len;


            s->s3->npn_seen = 0;



            if (s->session->ext.alpn_selected == ((void*)0)
                        || selected_len != s->session->ext.alpn_selected_len
                        || memcmp(selected, s->session->ext.alpn_selected,
                                  selected_len) != 0) {

                s->ext.early_data_ok = 0;

                if (!s->hit) {





                    if (!ossl_assert(s->session->ext.alpn_selected == ((void*)0))) {
                        SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                                 SSL_F_TLS_HANDLE_ALPN,
                                 ERR_R_INTERNAL_ERROR);
                        return 0;
                    }
                    s->session->ext.alpn_selected = OPENSSL_memdup(selected,
                                                                   selected_len);
                    if (s->session->ext.alpn_selected == ((void*)0)) {
                        SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                                 SSL_F_TLS_HANDLE_ALPN,
                                 ERR_R_INTERNAL_ERROR);
                        return 0;
                    }
                    s->session->ext.alpn_selected_len = selected_len;
                }
            }

            return 1;
        } else if (r != SSL_TLSEXT_ERR_NOACK) {
            SSLfatal(s, SSL_AD_NO_APPLICATION_PROTOCOL, SSL_F_TLS_HANDLE_ALPN,
                     SSL_R_NO_APPLICATION_PROTOCOL);
            return 0;
        }




    }


    if (s->session->ext.alpn_selected != ((void*)0)) {

        s->ext.early_data_ok = 0;
    }

    return 1;
}
