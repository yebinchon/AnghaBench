
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ tls13_cookie_len; } ;
struct TYPE_16__ {scalar_t__ init_num; TYPE_4__* init_buf; TYPE_3__* s3; TYPE_1__ ext; int * enc_write_ctx; } ;
struct TYPE_15__ {scalar_t__ data; } ;
struct TYPE_13__ {int * pkey; } ;
struct TYPE_14__ {TYPE_2__ tmp; } ;
typedef TYPE_5__ SSL ;
typedef int RAW_EXTENSION ;
typedef int PACKET ;
typedef int MSG_PROCESS_RETURN ;


 int EVP_CIPHER_CTX_free (int *) ;
 int MSG_PROCESS_ERROR ;
 int MSG_PROCESS_FINISHED_READING ;
 int OPENSSL_free (int *) ;
 scalar_t__ SSL3_HM_HEADER_LENGTH ;
 int SSL_AD_ILLEGAL_PARAMETER ;
 int SSL_EXT_TLS1_3_HELLO_RETRY_REQUEST ;
 int SSL_F_TLS_PROCESS_AS_HELLO_RETRY_REQUEST ;
 int SSL_R_NO_CHANGE_FOLLOWING_HRR ;
 int SSLfatal (TYPE_5__*,int ,int ,int ) ;
 int create_synthetic_message_hash (TYPE_5__*,int *,int ,int *,int ) ;
 int ssl3_finish_mac (TYPE_5__*,unsigned char*,scalar_t__) ;
 int tls_collect_extensions (TYPE_5__*,int *,int ,int **,int *,int) ;
 int tls_parse_all_extensions (TYPE_5__*,int ,int *,int *,int ,int) ;

__attribute__((used)) static MSG_PROCESS_RETURN tls_process_as_hello_retry_request(SSL *s,
                                                             PACKET *extpkt)
{
    RAW_EXTENSION *extensions = ((void*)0);





    EVP_CIPHER_CTX_free(s->enc_write_ctx);
    s->enc_write_ctx = ((void*)0);

    if (!tls_collect_extensions(s, extpkt, SSL_EXT_TLS1_3_HELLO_RETRY_REQUEST,
                                &extensions, ((void*)0), 1)
            || !tls_parse_all_extensions(s, SSL_EXT_TLS1_3_HELLO_RETRY_REQUEST,
                                         extensions, ((void*)0), 0, 1)) {

        goto err;
    }

    OPENSSL_free(extensions);
    extensions = ((void*)0);

    if (s->ext.tls13_cookie_len == 0

        && s->s3->tmp.pkey != ((void*)0)

        ) {




        SSLfatal(s, SSL_AD_ILLEGAL_PARAMETER,
                 SSL_F_TLS_PROCESS_AS_HELLO_RETRY_REQUEST,
                 SSL_R_NO_CHANGE_FOLLOWING_HRR);
        goto err;
    }





    if (!create_synthetic_message_hash(s, ((void*)0), 0, ((void*)0), 0)) {

        goto err;
    }







    if (!ssl3_finish_mac(s, (unsigned char *)s->init_buf->data,
                                s->init_num + SSL3_HM_HEADER_LENGTH)) {

        goto err;
    }

    return MSG_PROCESS_FINISHED_READING;
 err:
    OPENSSL_free(extensions);
    return MSG_PROCESS_ERROR;
}
