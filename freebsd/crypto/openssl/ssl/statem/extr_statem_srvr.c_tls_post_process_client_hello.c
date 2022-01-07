
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef scalar_t__ WORK_STATE ;
struct TYPE_22__ {scalar_t__ ticket_expected; } ;
struct TYPE_27__ {void* rwstate; TYPE_5__* session; TYPE_4__* s3; TYPE_2__ ext; scalar_t__ (* not_resumable_session_cb ) (TYPE_7__*,int) ;int hit; int peer_ciphers; TYPE_1__* cert; } ;
struct TYPE_26__ {int algorithm_mkey; } ;
struct TYPE_25__ {TYPE_6__ const* cipher; scalar_t__ not_resumable; } ;
struct TYPE_23__ {TYPE_6__ const* new_cipher; } ;
struct TYPE_24__ {TYPE_3__ tmp; } ;
struct TYPE_21__ {int (* cert_cb ) (TYPE_7__*,int ) ;int cert_cb_arg; } ;
typedef TYPE_6__ SSL_CIPHER ;
typedef TYPE_7__ SSL ;


 int SSL_AD_HANDSHAKE_FAILURE ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS_POST_PROCESS_CLIENT_HELLO ;
 scalar_t__ SSL_IS_TLS13 (TYPE_7__*) ;
 void* SSL_NOTHING ;
 int SSL_R_CERT_CB_ERROR ;
 int SSL_R_NO_SHARED_CIPHER ;
 void* SSL_X509_LOOKUP ;
 int SSL_get_ciphers (TYPE_7__*) ;
 int SSL_kDHE ;
 int SSL_kECDHE ;
 int SSLfatal (TYPE_7__*,int ,int ,int ) ;
 scalar_t__ WORK_ERROR ;
 scalar_t__ WORK_FINISHED_STOP ;
 scalar_t__ WORK_MORE_A ;
 scalar_t__ WORK_MORE_B ;
 scalar_t__ WORK_MORE_C ;
 TYPE_6__* ssl3_choose_cipher (TYPE_7__*,int ,int ) ;
 int ssl_check_srp_ext_ClientHello (TYPE_7__*) ;
 int stub1 (TYPE_7__*,int ) ;
 scalar_t__ stub2 (TYPE_7__*,int) ;
 int tls_choose_sigalg (TYPE_7__*,int) ;
 int tls_early_post_process_client_hello (TYPE_7__*) ;
 int tls_handle_alpn (TYPE_7__*) ;
 int tls_handle_status_request (TYPE_7__*) ;

WORK_STATE tls_post_process_client_hello(SSL *s, WORK_STATE wst)
{
    const SSL_CIPHER *cipher;

    if (wst == WORK_MORE_A) {
        int rv = tls_early_post_process_client_hello(s);
        if (rv == 0) {

            goto err;
        }
        if (rv < 0)
            return WORK_MORE_A;
        wst = WORK_MORE_B;
    }
    if (wst == WORK_MORE_B) {
        if (!s->hit || SSL_IS_TLS13(s)) {

            if (!s->hit && s->cert->cert_cb != ((void*)0)) {
                int rv = s->cert->cert_cb(s, s->cert->cert_cb_arg);
                if (rv == 0) {
                    SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                             SSL_F_TLS_POST_PROCESS_CLIENT_HELLO,
                             SSL_R_CERT_CB_ERROR);
                    goto err;
                }
                if (rv < 0) {
                    s->rwstate = SSL_X509_LOOKUP;
                    return WORK_MORE_B;
                }
                s->rwstate = SSL_NOTHING;
            }


            if (!SSL_IS_TLS13(s)) {
                cipher =
                    ssl3_choose_cipher(s, s->peer_ciphers, SSL_get_ciphers(s));

                if (cipher == ((void*)0)) {
                    SSLfatal(s, SSL_AD_HANDSHAKE_FAILURE,
                             SSL_F_TLS_POST_PROCESS_CLIENT_HELLO,
                             SSL_R_NO_SHARED_CIPHER);
                    goto err;
                }
                s->s3->tmp.new_cipher = cipher;
            }
            if (!s->hit) {
                if (!tls_choose_sigalg(s, 1)) {

                    goto err;
                }

                if (s->not_resumable_session_cb != ((void*)0))
                    s->session->not_resumable =
                        s->not_resumable_session_cb(s,
                            ((s->s3->tmp.new_cipher->algorithm_mkey
                              & (SSL_kDHE | SSL_kECDHE)) != 0));
                if (s->session->not_resumable)

                    s->ext.ticket_expected = 0;
            }
        } else {

            s->s3->tmp.new_cipher = s->session->cipher;
        }
        if (!tls_handle_status_request(s)) {

            goto err;
        }






        if (!SSL_IS_TLS13(s) && !tls_handle_alpn(s)) {

            goto err;
        }

        wst = WORK_MORE_C;
    }

    if (wst == WORK_MORE_C) {
        int ret;
        if ((ret = ssl_check_srp_ext_ClientHello(s)) == 0) {



            s->rwstate = SSL_X509_LOOKUP;
            return WORK_MORE_C;
        }
        if (ret < 0) {

            goto err;
        }
    }


    return WORK_FINISHED_STOP;
 err:
    return WORK_ERROR;
}
