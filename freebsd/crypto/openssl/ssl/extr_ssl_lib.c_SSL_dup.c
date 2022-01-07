
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_1__ ;


struct TYPE_28__ {int client_ca_names; int ca_names; int * cipher_list_by_id; int * cipher_list; int param; int default_passwd_callback_userdata; int default_passwd_callback; int hit; int shutdown; scalar_t__ server; scalar_t__ handshake_func; int * rbio; int * wbio; int ex_data; int generate_session_id; int msg_callback_arg; int msg_callback; int mode; int options; int version; scalar_t__ sid_ctx_length; int sid_ctx; int * cert; int method; int * session; int lock; int references; } ;
typedef TYPE_1__ SSL ;


 int BIO_dup_state (int *,char*) ;
 int BIO_up_ref (int *) ;
 int CRYPTO_EX_INDEX_SSL ;
 int CRYPTO_UP_REF (int *,int*,int ) ;
 int CRYPTO_dup_ex_data (int ,int *,int *) ;
 int SSL_copy_session_id (TYPE_1__*,TYPE_1__*) ;
 int SSL_free (TYPE_1__*) ;
 int SSL_get_SSL_CTX (TYPE_1__*) ;
 int SSL_get_info_callback (TYPE_1__*) ;
 int SSL_get_max_cert_list (TYPE_1__*) ;
 int SSL_get_read_ahead (TYPE_1__*) ;
 int SSL_get_verify_callback (TYPE_1__*) ;
 int SSL_get_verify_depth (TYPE_1__*) ;
 int SSL_get_verify_mode (TYPE_1__*) ;
 int SSL_in_before (TYPE_1__*) ;
 int SSL_in_init (TYPE_1__*) ;
 TYPE_1__* SSL_new (int ) ;
 int SSL_set_accept_state (TYPE_1__*) ;
 int SSL_set_connect_state (TYPE_1__*) ;
 int SSL_set_info_callback (TYPE_1__*,int ) ;
 int SSL_set_max_cert_list (TYPE_1__*,int ) ;
 int SSL_set_read_ahead (TYPE_1__*,int ) ;
 int SSL_set_session_id_context (TYPE_1__*,int ,int) ;
 int SSL_set_ssl_method (TYPE_1__*,int ) ;
 int SSL_set_verify (TYPE_1__*,int ,int ) ;
 int SSL_set_verify_depth (TYPE_1__*,int ) ;
 int X509_VERIFY_PARAM_inherit (int ,int ) ;
 int dup_ca_names (int *,int ) ;
 void* sk_SSL_CIPHER_dup (int *) ;
 int * ssl_cert_dup (int *) ;
 int ssl_cert_free (int *) ;
 int ssl_dane_dup (TYPE_1__*,TYPE_1__*) ;

SSL *SSL_dup(SSL *s)
{
    SSL *ret;
    int i;


    if (!SSL_in_init(s) || !SSL_in_before(s)) {
        CRYPTO_UP_REF(&s->references, &i, s->lock);
        return s;
    }




    if ((ret = SSL_new(SSL_get_SSL_CTX(s))) == ((void*)0))
        return ((void*)0);

    if (s->session != ((void*)0)) {




        if (!SSL_copy_session_id(ret, s))
            goto err;
    } else {






        if (!SSL_set_ssl_method(ret, s->method))
            goto err;

        if (s->cert != ((void*)0)) {
            ssl_cert_free(ret->cert);
            ret->cert = ssl_cert_dup(s->cert);
            if (ret->cert == ((void*)0))
                goto err;
        }

        if (!SSL_set_session_id_context(ret, s->sid_ctx,
                                        (int)s->sid_ctx_length))
            goto err;
    }

    if (!ssl_dane_dup(ret, s))
        goto err;
    ret->version = s->version;
    ret->options = s->options;
    ret->mode = s->mode;
    SSL_set_max_cert_list(ret, SSL_get_max_cert_list(s));
    SSL_set_read_ahead(ret, SSL_get_read_ahead(s));
    ret->msg_callback = s->msg_callback;
    ret->msg_callback_arg = s->msg_callback_arg;
    SSL_set_verify(ret, SSL_get_verify_mode(s), SSL_get_verify_callback(s));
    SSL_set_verify_depth(ret, SSL_get_verify_depth(s));
    ret->generate_session_id = s->generate_session_id;

    SSL_set_info_callback(ret, SSL_get_info_callback(s));


    if (!CRYPTO_dup_ex_data(CRYPTO_EX_INDEX_SSL, &ret->ex_data, &s->ex_data))
        goto err;


    if (s->rbio != ((void*)0)) {
        if (!BIO_dup_state(s->rbio, (char *)&ret->rbio))
            goto err;
    }
    if (s->wbio != ((void*)0)) {
        if (s->wbio != s->rbio) {
            if (!BIO_dup_state(s->wbio, (char *)&ret->wbio))
                goto err;
        } else {
            BIO_up_ref(ret->rbio);
            ret->wbio = ret->rbio;
        }
    }

    ret->server = s->server;
    if (s->handshake_func) {
        if (s->server)
            SSL_set_accept_state(ret);
        else
            SSL_set_connect_state(ret);
    }
    ret->shutdown = s->shutdown;
    ret->hit = s->hit;

    ret->default_passwd_callback = s->default_passwd_callback;
    ret->default_passwd_callback_userdata = s->default_passwd_callback_userdata;

    X509_VERIFY_PARAM_inherit(ret->param, s->param);


    if (s->cipher_list != ((void*)0)) {
        if ((ret->cipher_list = sk_SSL_CIPHER_dup(s->cipher_list)) == ((void*)0))
            goto err;
    }
    if (s->cipher_list_by_id != ((void*)0))
        if ((ret->cipher_list_by_id = sk_SSL_CIPHER_dup(s->cipher_list_by_id))
            == ((void*)0))
            goto err;


    if (!dup_ca_names(&ret->ca_names, s->ca_names)
            || !dup_ca_names(&ret->client_ca_names, s->client_ca_names))
        goto err;

    return ret;

 err:
    SSL_free(ret);
    return ((void*)0);
}
