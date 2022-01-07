
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int * alpn_selected; scalar_t__ alpn_selected_len; scalar_t__ ticklen; scalar_t__ tick_lifetime_hint; int * tick; int * hostname; } ;
struct TYPE_11__ {int references; int * ticket_appdata; scalar_t__ ticket_appdata_len; int * srp_username; TYPE_1__ ext; int ex_data; int * psk_identity; int * psk_identity_hint; int * peer_chain; int * peer; int * lock; int * next; int * prev; } ;
typedef TYPE_2__ SSL_SESSION ;


 int CRYPTO_EX_INDEX_SSL_SESSION ;
 int * CRYPTO_THREAD_lock_new () ;
 int CRYPTO_dup_ex_data (int ,int *,int *) ;
 int CRYPTO_new_ex_data (int ,TYPE_2__*,int *) ;
 int ERR_R_MALLOC_FAILURE ;
 TYPE_2__* OPENSSL_malloc (int) ;
 void* OPENSSL_memdup (int *,scalar_t__) ;
 void* OPENSSL_strdup (int *) ;
 int SSL_F_SSL_SESSION_DUP ;
 int SSL_SESSION_free (TYPE_2__*) ;
 int SSLerr (int ,int ) ;
 int * X509_chain_up_ref (int *) ;
 int X509_up_ref (int *) ;
 int memcpy (TYPE_2__*,TYPE_2__*,int) ;
 int memset (int *,int ,int) ;

SSL_SESSION *ssl_session_dup(SSL_SESSION *src, int ticket)
{
    SSL_SESSION *dest;

    dest = OPENSSL_malloc(sizeof(*src));
    if (dest == ((void*)0)) {
        goto err;
    }
    memcpy(dest, src, sizeof(*dest));






    dest->psk_identity_hint = ((void*)0);
    dest->psk_identity = ((void*)0);

    dest->ext.hostname = ((void*)0);
    dest->ext.tick = ((void*)0);
    dest->ext.alpn_selected = ((void*)0);

    dest->srp_username = ((void*)0);

    dest->peer_chain = ((void*)0);
    dest->peer = ((void*)0);
    dest->ticket_appdata = ((void*)0);
    memset(&dest->ex_data, 0, sizeof(dest->ex_data));


    dest->prev = ((void*)0);
    dest->next = ((void*)0);

    dest->references = 1;

    dest->lock = CRYPTO_THREAD_lock_new();
    if (dest->lock == ((void*)0))
        goto err;

    if (!CRYPTO_new_ex_data(CRYPTO_EX_INDEX_SSL_SESSION, dest, &dest->ex_data))
        goto err;

    if (src->peer != ((void*)0)) {
        if (!X509_up_ref(src->peer))
            goto err;
        dest->peer = src->peer;
    }

    if (src->peer_chain != ((void*)0)) {
        dest->peer_chain = X509_chain_up_ref(src->peer_chain);
        if (dest->peer_chain == ((void*)0))
            goto err;
    }

    if (src->psk_identity_hint) {
        dest->psk_identity_hint = OPENSSL_strdup(src->psk_identity_hint);
        if (dest->psk_identity_hint == ((void*)0)) {
            goto err;
        }
    }
    if (src->psk_identity) {
        dest->psk_identity = OPENSSL_strdup(src->psk_identity);
        if (dest->psk_identity == ((void*)0)) {
            goto err;
        }
    }


    if (!CRYPTO_dup_ex_data(CRYPTO_EX_INDEX_SSL_SESSION,
                            &dest->ex_data, &src->ex_data)) {
        goto err;
    }

    if (src->ext.hostname) {
        dest->ext.hostname = OPENSSL_strdup(src->ext.hostname);
        if (dest->ext.hostname == ((void*)0)) {
            goto err;
        }
    }

    if (ticket != 0 && src->ext.tick != ((void*)0)) {
        dest->ext.tick =
            OPENSSL_memdup(src->ext.tick, src->ext.ticklen);
        if (dest->ext.tick == ((void*)0))
            goto err;
    } else {
        dest->ext.tick_lifetime_hint = 0;
        dest->ext.ticklen = 0;
    }

    if (src->ext.alpn_selected != ((void*)0)) {
        dest->ext.alpn_selected = OPENSSL_memdup(src->ext.alpn_selected,
                                                 src->ext.alpn_selected_len);
        if (dest->ext.alpn_selected == ((void*)0))
            goto err;
    }


    if (src->srp_username) {
        dest->srp_username = OPENSSL_strdup(src->srp_username);
        if (dest->srp_username == ((void*)0)) {
            goto err;
        }
    }


    if (src->ticket_appdata != ((void*)0)) {
        dest->ticket_appdata =
            OPENSSL_memdup(src->ticket_appdata, src->ticket_appdata_len);
        if (dest->ticket_appdata == ((void*)0))
            goto err;
    }

    return dest;
 err:
    SSLerr(SSL_F_SSL_SESSION_DUP, ERR_R_MALLOC_FAILURE);
    SSL_SESSION_free(dest);
    return ((void*)0);
}
