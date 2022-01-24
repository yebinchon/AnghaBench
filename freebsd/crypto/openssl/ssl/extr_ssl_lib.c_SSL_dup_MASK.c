#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_1__ ;

/* Type definitions */
struct TYPE_28__ {int /*<<< orphan*/  client_ca_names; int /*<<< orphan*/  ca_names; int /*<<< orphan*/ * cipher_list_by_id; int /*<<< orphan*/ * cipher_list; int /*<<< orphan*/  param; int /*<<< orphan*/  default_passwd_callback_userdata; int /*<<< orphan*/  default_passwd_callback; int /*<<< orphan*/  hit; int /*<<< orphan*/  shutdown; scalar_t__ server; scalar_t__ handshake_func; int /*<<< orphan*/ * rbio; int /*<<< orphan*/ * wbio; int /*<<< orphan*/  ex_data; int /*<<< orphan*/  generate_session_id; int /*<<< orphan*/  msg_callback_arg; int /*<<< orphan*/  msg_callback; int /*<<< orphan*/  mode; int /*<<< orphan*/  options; int /*<<< orphan*/  version; scalar_t__ sid_ctx_length; int /*<<< orphan*/  sid_ctx; int /*<<< orphan*/ * cert; int /*<<< orphan*/  method; int /*<<< orphan*/ * session; int /*<<< orphan*/  lock; int /*<<< orphan*/  references; } ;
typedef  TYPE_1__ SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CRYPTO_EX_INDEX_SSL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 TYPE_1__* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_1__*,TYPE_1__*) ; 

SSL *FUNC31(SSL *s)
{
    SSL *ret;
    int i;

    /* If we're not quiescent, just up_ref! */
    if (!FUNC14(s) || !FUNC13(s)) {
        FUNC2(&s->references, &i, s->lock);
        return s;
    }

    /*
     * Otherwise, copy configuration state, and session if set.
     */
    if ((ret = FUNC15(FUNC6(s))) == NULL)
        return NULL;

    if (s->session != NULL) {
        /*
         * Arranges to share the same session via up_ref.  This "copies"
         * session-id, SSL_METHOD, sid_ctx, and 'cert'
         */
        if (!FUNC4(ret, s))
            goto err;
    } else {
        /*
         * No session has been established yet, so we have to expect that
         * s->cert or ret->cert will be changed later -- they should not both
         * point to the same object, and thus we can't use
         * SSL_copy_session_id.
         */
        if (!FUNC22(ret, s->method))
            goto err;

        if (s->cert != NULL) {
            FUNC29(ret->cert);
            ret->cert = FUNC28(s->cert);
            if (ret->cert == NULL)
                goto err;
        }

        if (!FUNC21(ret, s->sid_ctx,
                                        (int)s->sid_ctx_length))
            goto err;
    }

    if (!FUNC30(ret, s))
        goto err;
    ret->version = s->version;
    ret->options = s->options;
    ret->mode = s->mode;
    FUNC19(ret, FUNC8(s));
    FUNC20(ret, FUNC9(s));
    ret->msg_callback = s->msg_callback;
    ret->msg_callback_arg = s->msg_callback_arg;
    FUNC23(ret, FUNC12(s), FUNC10(s));
    FUNC24(ret, FUNC11(s));
    ret->generate_session_id = s->generate_session_id;

    FUNC18(ret, FUNC7(s));

    /* copy app data, a little dangerous perhaps */
    if (!FUNC3(CRYPTO_EX_INDEX_SSL, &ret->ex_data, &s->ex_data))
        goto err;

    /* setup rbio, and wbio */
    if (s->rbio != NULL) {
        if (!FUNC0(s->rbio, (char *)&ret->rbio))
            goto err;
    }
    if (s->wbio != NULL) {
        if (s->wbio != s->rbio) {
            if (!FUNC0(s->wbio, (char *)&ret->wbio))
                goto err;
        } else {
            FUNC1(ret->rbio);
            ret->wbio = ret->rbio;
        }
    }

    ret->server = s->server;
    if (s->handshake_func) {
        if (s->server)
            FUNC16(ret);
        else
            FUNC17(ret);
    }
    ret->shutdown = s->shutdown;
    ret->hit = s->hit;

    ret->default_passwd_callback = s->default_passwd_callback;
    ret->default_passwd_callback_userdata = s->default_passwd_callback_userdata;

    FUNC25(ret->param, s->param);

    /* dup the cipher_list and cipher_list_by_id stacks */
    if (s->cipher_list != NULL) {
        if ((ret->cipher_list = FUNC27(s->cipher_list)) == NULL)
            goto err;
    }
    if (s->cipher_list_by_id != NULL)
        if ((ret->cipher_list_by_id = FUNC27(s->cipher_list_by_id))
            == NULL)
            goto err;

    /* Dup the client_CA list */
    if (!FUNC26(&ret->ca_names, s->ca_names)
            || !FUNC26(&ret->client_ca_names, s->client_ca_names))
        goto err;

    return ret;

 err:
    FUNC5(ret);
    return NULL;
}