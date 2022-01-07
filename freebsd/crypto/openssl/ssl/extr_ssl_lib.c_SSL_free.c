
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {TYPE_4__* resp; int ids; int exts; } ;
struct TYPE_15__ {TYPE_4__* npn; TYPE_4__* tls13_cookie; TYPE_4__* alpn; TYPE_1__ ocsp; TYPE_4__* scts; TYPE_4__* peer_supportedgroups; TYPE_4__* supportedgroups; TYPE_4__* peer_ecpointformats; TYPE_4__* ecpointformats; TYPE_4__* hostname; } ;
struct TYPE_16__ {int lock; int srtp_profiles; TYPE_3__ ext; int waitctx; int ctx; int rlayer; TYPE_2__* method; int verified_chain; int client_ca_names; int ca_names; int pha_dgst; struct TYPE_16__* pha_context; struct TYPE_16__* clienthello; int scts; int session_ctx; struct TYPE_16__* shared_sigalgs; int cert; struct TYPE_16__* psksession_id; int * psksession; int * session; int peer_ciphers; int tls13_ciphersuites; int cipher_list_by_id; int cipher_list; int init_buf; int rbio; int wbio; int ex_data; int dane; int param; int references; } ;
struct TYPE_14__ {int (* ssl_free ) (TYPE_4__*) ;} ;
typedef TYPE_4__ SSL ;


 int ASYNC_WAIT_CTX_free (int ) ;
 int BIO_free_all (int ) ;
 int BUF_MEM_free (int ) ;
 int CRYPTO_DOWN_REF (int *,int*,int ) ;
 int CRYPTO_EX_INDEX_SSL ;
 int CRYPTO_THREAD_lock_free (int ) ;
 int CRYPTO_free_ex_data (int ,TYPE_4__*,int *) ;
 int EVP_MD_CTX_free (int ) ;
 int OCSP_RESPID_free ;
 int OPENSSL_free (TYPE_4__*) ;
 int RECORD_LAYER_release (int *) ;
 int REF_ASSERT_ISNT (int) ;
 int REF_PRINT_COUNT (char*,TYPE_4__*) ;
 int SCT_LIST_free (int ) ;
 int SSL_CTX_free (int ) ;
 int SSL_SESSION_free (int *) ;
 int X509_EXTENSION_free ;
 int X509_NAME_free ;
 int X509_VERIFY_PARAM_free (int ) ;
 int X509_free ;
 int clear_ciphers (TYPE_4__*) ;
 int dane_final (int *) ;
 int sk_OCSP_RESPID_pop_free (int ,int ) ;
 int sk_SRTP_PROTECTION_PROFILE_free (int ) ;
 int sk_SSL_CIPHER_free (int ) ;
 int sk_X509_EXTENSION_pop_free (int ,int ) ;
 int sk_X509_NAME_pop_free (int ,int ) ;
 int sk_X509_pop_free (int ,int ) ;
 int ssl_cert_free (int ) ;
 int ssl_clear_bad_session (TYPE_4__*) ;
 int ssl_free_wbio_buffer (TYPE_4__*) ;
 int stub1 (TYPE_4__*) ;

void SSL_free(SSL *s)
{
    int i;

    if (s == ((void*)0))
        return;
    CRYPTO_DOWN_REF(&s->references, &i, s->lock);
    REF_PRINT_COUNT("SSL", s);
    if (i > 0)
        return;
    REF_ASSERT_ISNT(i < 0);

    X509_VERIFY_PARAM_free(s->param);
    dane_final(&s->dane);
    CRYPTO_free_ex_data(CRYPTO_EX_INDEX_SSL, s, &s->ex_data);


    ssl_free_wbio_buffer(s);

    BIO_free_all(s->wbio);
    BIO_free_all(s->rbio);

    BUF_MEM_free(s->init_buf);


    sk_SSL_CIPHER_free(s->cipher_list);
    sk_SSL_CIPHER_free(s->cipher_list_by_id);
    sk_SSL_CIPHER_free(s->tls13_ciphersuites);
    sk_SSL_CIPHER_free(s->peer_ciphers);


    if (s->session != ((void*)0)) {
        ssl_clear_bad_session(s);
        SSL_SESSION_free(s->session);
    }
    SSL_SESSION_free(s->psksession);
    OPENSSL_free(s->psksession_id);

    clear_ciphers(s);

    ssl_cert_free(s->cert);
    OPENSSL_free(s->shared_sigalgs);


    OPENSSL_free(s->ext.hostname);
    SSL_CTX_free(s->session_ctx);

    OPENSSL_free(s->ext.ecpointformats);
    OPENSSL_free(s->ext.peer_ecpointformats);
    OPENSSL_free(s->ext.supportedgroups);
    OPENSSL_free(s->ext.peer_supportedgroups);

    sk_X509_EXTENSION_pop_free(s->ext.ocsp.exts, X509_EXTENSION_free);

    sk_OCSP_RESPID_pop_free(s->ext.ocsp.ids, OCSP_RESPID_free);


    SCT_LIST_free(s->scts);
    OPENSSL_free(s->ext.scts);

    OPENSSL_free(s->ext.ocsp.resp);
    OPENSSL_free(s->ext.alpn);
    OPENSSL_free(s->ext.tls13_cookie);
    OPENSSL_free(s->clienthello);
    OPENSSL_free(s->pha_context);
    EVP_MD_CTX_free(s->pha_dgst);

    sk_X509_NAME_pop_free(s->ca_names, X509_NAME_free);
    sk_X509_NAME_pop_free(s->client_ca_names, X509_NAME_free);

    sk_X509_pop_free(s->verified_chain, X509_free);

    if (s->method != ((void*)0))
        s->method->ssl_free(s);

    RECORD_LAYER_release(&s->rlayer);

    SSL_CTX_free(s->ctx);

    ASYNC_WAIT_CTX_free(s->waitctx);


    OPENSSL_free(s->ext.npn);



    sk_SRTP_PROTECTION_PROFILE_free(s->srtp_profiles);


    CRYPTO_THREAD_lock_free(s->lock);

    OPENSSL_free(s);
}
