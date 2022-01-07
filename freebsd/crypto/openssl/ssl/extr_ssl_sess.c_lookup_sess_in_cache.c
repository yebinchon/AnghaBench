
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


struct TYPE_16__ {TYPE_11__* session_ctx; int version; } ;
struct TYPE_15__ {size_t session_id_length; int session_id; int ssl_version; } ;
struct TYPE_14__ {int sess_cb_hit; int sess_miss; } ;
struct TYPE_13__ {int session_cache_mode; TYPE_1__ stats; TYPE_2__* (* get_session_cb ) (TYPE_3__*,unsigned char const*,size_t,int*) ;int lock; int sessions; } ;
typedef TYPE_2__ SSL_SESSION ;
typedef TYPE_3__ SSL ;


 int CRYPTO_THREAD_read_lock (int ) ;
 int CRYPTO_THREAD_unlock (int ) ;
 int SSL_CTX_add_session (TYPE_11__*,TYPE_2__*) ;
 size_t SSL_MAX_SSL_SESSION_ID_LENGTH ;
 int SSL_SESSION_up_ref (TYPE_2__*) ;
 int SSL_SESS_CACHE_NO_INTERNAL_LOOKUP ;
 int SSL_SESS_CACHE_NO_INTERNAL_STORE ;
 TYPE_2__* lh_SSL_SESSION_retrieve (int ,TYPE_2__*) ;
 int memcpy (int ,unsigned char const*,size_t) ;
 int ossl_assert (int) ;
 TYPE_2__* stub1 (TYPE_3__*,unsigned char const*,size_t,int*) ;
 int tsan_counter (int *) ;

SSL_SESSION *lookup_sess_in_cache(SSL *s, const unsigned char *sess_id,
                                  size_t sess_id_len)
{
    SSL_SESSION *ret = ((void*)0);

    if ((s->session_ctx->session_cache_mode
         & SSL_SESS_CACHE_NO_INTERNAL_LOOKUP) == 0) {
        SSL_SESSION data;

        data.ssl_version = s->version;
        if (!ossl_assert(sess_id_len <= SSL_MAX_SSL_SESSION_ID_LENGTH))
            return ((void*)0);

        memcpy(data.session_id, sess_id, sess_id_len);
        data.session_id_length = sess_id_len;

        CRYPTO_THREAD_read_lock(s->session_ctx->lock);
        ret = lh_SSL_SESSION_retrieve(s->session_ctx->sessions, &data);
        if (ret != ((void*)0)) {

            SSL_SESSION_up_ref(ret);
        }
        CRYPTO_THREAD_unlock(s->session_ctx->lock);
        if (ret == ((void*)0))
            tsan_counter(&s->session_ctx->stats.sess_miss);
    }

    if (ret == ((void*)0) && s->session_ctx->get_session_cb != ((void*)0)) {
        int copy = 1;

        ret = s->session_ctx->get_session_cb(s, sess_id, sess_id_len, &copy);

        if (ret != ((void*)0)) {
            tsan_counter(&s->session_ctx->stats.sess_cb_hit);
            if (copy)
                SSL_SESSION_up_ref(ret);





            if ((s->session_ctx->session_cache_mode &
                 SSL_SESS_CACHE_NO_INTERNAL_STORE) == 0) {





                (void)SSL_CTX_add_session(s->session_ctx, ret);
            }
        }
    }

    return ret;
}
