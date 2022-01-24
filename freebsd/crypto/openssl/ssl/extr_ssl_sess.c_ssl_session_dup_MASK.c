#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/ * alpn_selected; scalar_t__ alpn_selected_len; scalar_t__ ticklen; scalar_t__ tick_lifetime_hint; int /*<<< orphan*/ * tick; int /*<<< orphan*/ * hostname; } ;
struct TYPE_11__ {int references; int /*<<< orphan*/ * ticket_appdata; scalar_t__ ticket_appdata_len; int /*<<< orphan*/ * srp_username; TYPE_1__ ext; int /*<<< orphan*/  ex_data; int /*<<< orphan*/ * psk_identity; int /*<<< orphan*/ * psk_identity_hint; int /*<<< orphan*/ * peer_chain; int /*<<< orphan*/ * peer; int /*<<< orphan*/ * lock; int /*<<< orphan*/ * next; int /*<<< orphan*/ * prev; } ;
typedef  TYPE_2__ SSL_SESSION ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_EX_INDEX_SSL_SESSION ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 TYPE_2__* FUNC3 (int) ; 
 void* FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_F_SSL_SESSION_DUP ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

SSL_SESSION *FUNC12(SSL_SESSION *src, int ticket)
{
    SSL_SESSION *dest;

    dest = FUNC3(sizeof(*src));
    if (dest == NULL) {
        goto err;
    }
    FUNC10(dest, src, sizeof(*dest));

    /*
     * Set the various pointers to NULL so that we can call SSL_SESSION_free in
     * the case of an error whilst halfway through constructing dest
     */
#ifndef OPENSSL_NO_PSK
    dest->psk_identity_hint = NULL;
    dest->psk_identity = NULL;
#endif
    dest->ext.hostname = NULL;
    dest->ext.tick = NULL;
    dest->ext.alpn_selected = NULL;
#ifndef OPENSSL_NO_SRP
    dest->srp_username = NULL;
#endif
    dest->peer_chain = NULL;
    dest->peer = NULL;
    dest->ticket_appdata = NULL;
    FUNC11(&dest->ex_data, 0, sizeof(dest->ex_data));

    /* We deliberately don't copy the prev and next pointers */
    dest->prev = NULL;
    dest->next = NULL;

    dest->references = 1;

    dest->lock = FUNC0();
    if (dest->lock == NULL)
        goto err;

    if (!FUNC2(CRYPTO_EX_INDEX_SSL_SESSION, dest, &dest->ex_data))
        goto err;

    if (src->peer != NULL) {
        if (!FUNC9(src->peer))
            goto err;
        dest->peer = src->peer;
    }

    if (src->peer_chain != NULL) {
        dest->peer_chain = FUNC8(src->peer_chain);
        if (dest->peer_chain == NULL)
            goto err;
    }
#ifndef OPENSSL_NO_PSK
    if (src->psk_identity_hint) {
        dest->psk_identity_hint = FUNC5(src->psk_identity_hint);
        if (dest->psk_identity_hint == NULL) {
            goto err;
        }
    }
    if (src->psk_identity) {
        dest->psk_identity = FUNC5(src->psk_identity);
        if (dest->psk_identity == NULL) {
            goto err;
        }
    }
#endif

    if (!FUNC1(CRYPTO_EX_INDEX_SSL_SESSION,
                            &dest->ex_data, &src->ex_data)) {
        goto err;
    }

    if (src->ext.hostname) {
        dest->ext.hostname = FUNC5(src->ext.hostname);
        if (dest->ext.hostname == NULL) {
            goto err;
        }
    }

    if (ticket != 0 && src->ext.tick != NULL) {
        dest->ext.tick =
            FUNC4(src->ext.tick, src->ext.ticklen);
        if (dest->ext.tick == NULL)
            goto err;
    } else {
        dest->ext.tick_lifetime_hint = 0;
        dest->ext.ticklen = 0;
    }

    if (src->ext.alpn_selected != NULL) {
        dest->ext.alpn_selected = FUNC4(src->ext.alpn_selected,
                                                 src->ext.alpn_selected_len);
        if (dest->ext.alpn_selected == NULL)
            goto err;
    }

#ifndef OPENSSL_NO_SRP
    if (src->srp_username) {
        dest->srp_username = FUNC5(src->srp_username);
        if (dest->srp_username == NULL) {
            goto err;
        }
    }
#endif

    if (src->ticket_appdata != NULL) {
        dest->ticket_appdata =
            FUNC4(src->ticket_appdata, src->ticket_appdata_len);
        if (dest->ticket_appdata == NULL)
            goto err;
    }

    return dest;
 err:
    FUNC7(SSL_F_SSL_SESSION_DUP, ERR_R_MALLOC_FAILURE);
    FUNC6(dest);
    return NULL;
}