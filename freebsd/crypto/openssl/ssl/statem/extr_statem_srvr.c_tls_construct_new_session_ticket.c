
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
typedef int nonce_label ;
typedef int age_add_u ;
typedef int WPACKET ;
struct TYPE_25__ {scalar_t__ sent_tickets; int next_ticket_nonce; scalar_t__ max_early_data; int options; TYPE_3__* session; TYPE_1__* s3; int resumption_master_secret; scalar_t__ hit; TYPE_4__* session_ctx; } ;
struct TYPE_24__ {scalar_t__ (* generate_ticket_cb ) (TYPE_5__*,int ) ;int ticket_cb_data; } ;
struct TYPE_22__ {scalar_t__ max_early_data; int alpn_selected_len; int * alpn_selected; scalar_t__ tick_age_add; } ;
struct TYPE_23__ {size_t master_key_length; long time; TYPE_2__ ext; int master_key; } ;
struct TYPE_21__ {int alpn_selected_len; int * alpn_selected; } ;
typedef TYPE_3__ SSL_SESSION ;
typedef TYPE_4__ SSL_CTX ;
typedef TYPE_5__ SSL ;
typedef int EVP_MD ;


 int ERR_R_INTERNAL_ERROR ;
 int ERR_R_MALLOC_FAILURE ;
 int EVP_MD_size (int const*) ;
 int OPENSSL_free (int *) ;
 int * OPENSSL_memdup (int *,int ) ;
 scalar_t__ RAND_bytes (unsigned char*,int) ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_EXT_TLS1_3_NEW_SESSION_TICKET ;
 int SSL_F_TLS_CONSTRUCT_NEW_SESSION_TICKET ;
 scalar_t__ SSL_IS_TLS13 (TYPE_5__*) ;
 int SSL_OP_NO_ANTI_REPLAY ;
 int SSL_OP_NO_TICKET ;
 int SSL_SESSION_free (TYPE_3__*) ;
 int SSL_SESS_CACHE_SERVER ;
 int SSLfatal (TYPE_5__*,int ,int ,int ) ;
 int TICKET_NONCE_SIZE ;
 int construct_stateful_ticket (TYPE_5__*,int *,scalar_t__,unsigned char*) ;
 int construct_stateless_ticket (TYPE_5__*,int *,scalar_t__,unsigned char*) ;
 int ossl_assert (int) ;
 int ssl_generate_session_id (TYPE_5__*,TYPE_3__*) ;
 int * ssl_handshake_md (TYPE_5__*) ;
 TYPE_3__* ssl_session_dup (TYPE_3__*,int ) ;
 int ssl_update_cache (TYPE_5__*,int ) ;
 scalar_t__ stub1 (TYPE_5__*,int ) ;
 scalar_t__ time (int *) ;
 int tls13_hkdf_expand (TYPE_5__*,int const*,int ,unsigned char const*,int,unsigned char*,int,int ,size_t,int) ;
 int tls_construct_extensions (TYPE_5__*,int *,int ,int *,int ) ;

int tls_construct_new_session_ticket(SSL *s, WPACKET *pkt)
{
    SSL_CTX *tctx = s->session_ctx;
    unsigned char tick_nonce[TICKET_NONCE_SIZE];
    union {
        unsigned char age_add_c[sizeof(uint32_t)];
        uint32_t age_add;
    } age_add_u;

    age_add_u.age_add = 0;

    if (SSL_IS_TLS13(s)) {
        size_t i, hashlen;
        uint64_t nonce;
        static const unsigned char nonce_label[] = "resumption";
        const EVP_MD *md = ssl_handshake_md(s);
        int hashleni = EVP_MD_size(md);


        if (!ossl_assert(hashleni >= 0)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_NEW_SESSION_TICKET,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }
        hashlen = (size_t)hashleni;






        if (s->sent_tickets != 0 || s->hit) {
            SSL_SESSION *new_sess = ssl_session_dup(s->session, 0);

            if (new_sess == ((void*)0)) {

                goto err;
            }

            SSL_SESSION_free(s->session);
            s->session = new_sess;
        }

        if (!ssl_generate_session_id(s, s->session)) {

            goto err;
        }
        if (RAND_bytes(age_add_u.age_add_c, sizeof(age_add_u)) <= 0) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_NEW_SESSION_TICKET,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }
        s->session->ext.tick_age_add = age_add_u.age_add;

        nonce = s->next_ticket_nonce;
        for (i = TICKET_NONCE_SIZE; i > 0; i--) {
            tick_nonce[i - 1] = (unsigned char)(nonce & 0xff);
            nonce >>= 8;
        }

        if (!tls13_hkdf_expand(s, md, s->resumption_master_secret,
                               nonce_label,
                               sizeof(nonce_label) - 1,
                               tick_nonce,
                               TICKET_NONCE_SIZE,
                               s->session->master_key,
                               hashlen, 1)) {

            goto err;
        }
        s->session->master_key_length = hashlen;

        s->session->time = (long)time(((void*)0));
        if (s->s3->alpn_selected != ((void*)0)) {
            OPENSSL_free(s->session->ext.alpn_selected);
            s->session->ext.alpn_selected =
                OPENSSL_memdup(s->s3->alpn_selected, s->s3->alpn_selected_len);
            if (s->session->ext.alpn_selected == ((void*)0)) {
                SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_TLS_CONSTRUCT_NEW_SESSION_TICKET,
                         ERR_R_MALLOC_FAILURE);
                goto err;
            }
            s->session->ext.alpn_selected_len = s->s3->alpn_selected_len;
        }
        s->session->ext.max_early_data = s->max_early_data;
    }

    if (tctx->generate_ticket_cb != ((void*)0) &&
        tctx->generate_ticket_cb(s, tctx->ticket_cb_data) == 0)
        goto err;






    if (SSL_IS_TLS13(s)
            && ((s->options & SSL_OP_NO_TICKET) != 0
                || (s->max_early_data > 0
                    && (s->options & SSL_OP_NO_ANTI_REPLAY) == 0))) {
        if (!construct_stateful_ticket(s, pkt, age_add_u.age_add, tick_nonce)) {

            goto err;
        }
    } else if (!construct_stateless_ticket(s, pkt, age_add_u.age_add,
                                           tick_nonce)) {

        goto err;
    }

    if (SSL_IS_TLS13(s)) {
        if (!tls_construct_extensions(s, pkt,
                                      SSL_EXT_TLS1_3_NEW_SESSION_TICKET,
                                      ((void*)0), 0)) {

            goto err;
        }





        s->sent_tickets++;
        s->next_ticket_nonce++;
        ssl_update_cache(s, SSL_SESS_CACHE_SERVER);
    }

    return 1;
 err:
    return 0;
}
