
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_14__ ;


struct TYPE_19__ {int status_type; int cookie_hmac_key; TYPE_14__* secure; int tick_key_name; } ;
struct TYPE_21__ {int references; int options; int num_tickets; void* recv_max_early_data; scalar_t__ max_early_data; TYPE_2__ ext; void* split_send_fragment; void* max_send_fragment; int comp_methods; int ex_data; int * client_ca_names; int * ca_names; int * sha1; int * md5; int * param; int cipher_list; int * cert; int cipher_list_by_id; int tls13_ciphersuites; TYPE_3__ const* method; int * ctlog_store; int * cert_store; int * sessions; int verify_mode; int max_cert_list; int * lock; int session_timeout; int session_cache_size; int session_cache_mode; int mode; scalar_t__ max_proto_version; scalar_t__ min_proto_version; } ;
struct TYPE_20__ {TYPE_1__* ssl3_enc; int (* get_timeout ) () ;} ;
struct TYPE_18__ {int enc_flags; } ;
struct TYPE_17__ {int tick_aes_key; int tick_hmac_key; } ;
typedef TYPE_3__ SSL_METHOD ;
typedef TYPE_4__ SSL_CTX ;
typedef int ENGINE ;


 int CRYPTO_EX_INDEX_SSL_CTX ;
 int * CRYPTO_THREAD_lock_new () ;
 int CRYPTO_new_ex_data (int ,TYPE_4__*,int *) ;
 int * CTLOG_STORE_new () ;
 int * ENGINE_by_id (int ) ;
 int ENGINE_load_builtin_engines () ;
 int ERR_R_MALLOC_FAILURE ;
 int ERR_clear_error () ;
 void* EVP_get_digestbyname (char*) ;
 int OPENSSL_INIT_LOAD_SSL_STRINGS ;
 int OPENSSL_SSL_CLIENT_ENGINE_AUTO ;
 int OPENSSL_free (TYPE_4__*) ;
 int OPENSSL_init_ssl (int ,int *) ;
 TYPE_14__* OPENSSL_secure_zalloc (int) ;
 TYPE_4__* OPENSSL_zalloc (int) ;
 scalar_t__ RAND_bytes (int ,int) ;
 scalar_t__ RAND_priv_bytes (int ,int) ;
 void* SSL3_RT_MAX_PLAIN_LENGTH ;
 int SSL_COMP_get_compression_methods () ;
 int SSL_CTX_SRP_CTX_init (TYPE_4__*) ;
 int SSL_CTX_free (TYPE_4__*) ;
 int SSL_CTX_set_ciphersuites (TYPE_4__*,int ) ;
 int SSL_CTX_set_client_cert_engine (TYPE_4__*,int *) ;
 int SSL_DEFAULT_CIPHER_LIST ;
 int SSL_ENC_FLAG_DTLS ;
 int SSL_F_SSL_CTX_NEW ;
 int SSL_MAX_CERT_LIST_DEFAULT ;
 int SSL_MODE_AUTO_RETRY ;
 int SSL_OP_ENABLE_MIDDLEBOX_COMPAT ;
 int SSL_OP_LEGACY_SERVER_CONNECT ;
 int SSL_OP_NO_COMPRESSION ;
 int SSL_OP_NO_TICKET ;
 int SSL_R_LIBRARY_HAS_NO_CIPHERS ;
 int SSL_R_NULL_SSL_METHOD_PASSED ;
 int SSL_R_UNABLE_TO_LOAD_SSL3_MD5_ROUTINES ;
 int SSL_R_UNABLE_TO_LOAD_SSL3_SHA1_ROUTINES ;
 int SSL_R_X509_VERIFICATION_SETUP_PROBLEMS ;
 int SSL_SESSION_CACHE_MAX_SIZE_DEFAULT ;
 int SSL_SESS_CACHE_SERVER ;
 int SSL_VERIFY_NONE ;
 scalar_t__ SSL_get_ex_data_X509_STORE_CTX_idx () ;
 int SSLerr (int ,int ) ;
 int TLSEXT_STATUSTYPE_nothing ;
 int TLS_DEFAULT_CIPHERSUITES ;
 int * X509_STORE_new () ;
 int * X509_VERIFY_PARAM_new () ;
 int eng_str (int ) ;
 int * lh_SSL_SESSION_new (int ,int ) ;
 scalar_t__ sk_SSL_CIPHER_num (int ) ;
 void* sk_X509_NAME_new_null () ;
 int * ssl_cert_new () ;
 int ssl_create_cipher_list (TYPE_3__ const*,int ,int *,int *,int ,int *) ;
 int ssl_ctx_system_config (TYPE_4__*) ;
 int ssl_session_cmp ;
 int ssl_session_hash ;
 int stub1 () ;

SSL_CTX *SSL_CTX_new(const SSL_METHOD *meth)
{
    SSL_CTX *ret = ((void*)0);

    if (meth == ((void*)0)) {
        SSLerr(SSL_F_SSL_CTX_NEW, SSL_R_NULL_SSL_METHOD_PASSED);
        return ((void*)0);
    }

    if (!OPENSSL_init_ssl(OPENSSL_INIT_LOAD_SSL_STRINGS, ((void*)0)))
        return ((void*)0);

    if (SSL_get_ex_data_X509_STORE_CTX_idx() < 0) {
        SSLerr(SSL_F_SSL_CTX_NEW, SSL_R_X509_VERIFICATION_SETUP_PROBLEMS);
        goto err;
    }
    ret = OPENSSL_zalloc(sizeof(*ret));
    if (ret == ((void*)0))
        goto err;

    ret->method = meth;
    ret->min_proto_version = 0;
    ret->max_proto_version = 0;
    ret->mode = SSL_MODE_AUTO_RETRY;
    ret->session_cache_mode = SSL_SESS_CACHE_SERVER;
    ret->session_cache_size = SSL_SESSION_CACHE_MAX_SIZE_DEFAULT;

    ret->session_timeout = meth->get_timeout();
    ret->references = 1;
    ret->lock = CRYPTO_THREAD_lock_new();
    if (ret->lock == ((void*)0)) {
        SSLerr(SSL_F_SSL_CTX_NEW, ERR_R_MALLOC_FAILURE);
        OPENSSL_free(ret);
        return ((void*)0);
    }
    ret->max_cert_list = SSL_MAX_CERT_LIST_DEFAULT;
    ret->verify_mode = SSL_VERIFY_NONE;
    if ((ret->cert = ssl_cert_new()) == ((void*)0))
        goto err;

    ret->sessions = lh_SSL_SESSION_new(ssl_session_hash, ssl_session_cmp);
    if (ret->sessions == ((void*)0))
        goto err;
    ret->cert_store = X509_STORE_new();
    if (ret->cert_store == ((void*)0))
        goto err;

    ret->ctlog_store = CTLOG_STORE_new();
    if (ret->ctlog_store == ((void*)0))
        goto err;


    if (!SSL_CTX_set_ciphersuites(ret, TLS_DEFAULT_CIPHERSUITES))
        goto err;

    if (!ssl_create_cipher_list(ret->method,
                                ret->tls13_ciphersuites,
                                &ret->cipher_list, &ret->cipher_list_by_id,
                                SSL_DEFAULT_CIPHER_LIST, ret->cert)
        || sk_SSL_CIPHER_num(ret->cipher_list) <= 0) {
        SSLerr(SSL_F_SSL_CTX_NEW, SSL_R_LIBRARY_HAS_NO_CIPHERS);
        goto err2;
    }

    ret->param = X509_VERIFY_PARAM_new();
    if (ret->param == ((void*)0))
        goto err;

    if ((ret->md5 = EVP_get_digestbyname("ssl3-md5")) == ((void*)0)) {
        SSLerr(SSL_F_SSL_CTX_NEW, SSL_R_UNABLE_TO_LOAD_SSL3_MD5_ROUTINES);
        goto err2;
    }
    if ((ret->sha1 = EVP_get_digestbyname("ssl3-sha1")) == ((void*)0)) {
        SSLerr(SSL_F_SSL_CTX_NEW, SSL_R_UNABLE_TO_LOAD_SSL3_SHA1_ROUTINES);
        goto err2;
    }

    if ((ret->ca_names = sk_X509_NAME_new_null()) == ((void*)0))
        goto err;

    if ((ret->client_ca_names = sk_X509_NAME_new_null()) == ((void*)0))
        goto err;

    if (!CRYPTO_new_ex_data(CRYPTO_EX_INDEX_SSL_CTX, ret, &ret->ex_data))
        goto err;

    if ((ret->ext.secure = OPENSSL_secure_zalloc(sizeof(*ret->ext.secure))) == ((void*)0))
        goto err;


    if (!(meth->ssl3_enc->enc_flags & SSL_ENC_FLAG_DTLS))
        ret->comp_methods = SSL_COMP_get_compression_methods();

    ret->max_send_fragment = SSL3_RT_MAX_PLAIN_LENGTH;
    ret->split_send_fragment = SSL3_RT_MAX_PLAIN_LENGTH;


    if ((RAND_bytes(ret->ext.tick_key_name,
                    sizeof(ret->ext.tick_key_name)) <= 0)
        || (RAND_priv_bytes(ret->ext.secure->tick_hmac_key,
                       sizeof(ret->ext.secure->tick_hmac_key)) <= 0)
        || (RAND_priv_bytes(ret->ext.secure->tick_aes_key,
                       sizeof(ret->ext.secure->tick_aes_key)) <= 0))
        ret->options |= SSL_OP_NO_TICKET;

    if (RAND_priv_bytes(ret->ext.cookie_hmac_key,
                   sizeof(ret->ext.cookie_hmac_key)) <= 0)
        goto err;


    if (!SSL_CTX_SRP_CTX_init(ret))
        goto err;
    ret->options |= SSL_OP_LEGACY_SERVER_CONNECT;
    ret->options |= SSL_OP_NO_COMPRESSION | SSL_OP_ENABLE_MIDDLEBOX_COMPAT;

    ret->ext.status_type = TLSEXT_STATUSTYPE_nothing;
    ret->max_early_data = 0;
    ret->recv_max_early_data = SSL3_RT_MAX_PLAIN_LENGTH;


    ret->num_tickets = 2;

    ssl_ctx_system_config(ret);

    return ret;
 err:
    SSLerr(SSL_F_SSL_CTX_NEW, ERR_R_MALLOC_FAILURE);
 err2:
    SSL_CTX_free(ret);
    return ((void*)0);
}
