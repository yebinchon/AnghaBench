
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* session_ctx; int version; } ;
struct TYPE_8__ {unsigned int session_id_length; int session_id; int ssl_version; } ;
struct TYPE_7__ {int lock; int sessions; } ;
typedef TYPE_2__ SSL_SESSION ;
typedef TYPE_3__ SSL ;


 int CRYPTO_THREAD_read_lock (int ) ;
 int CRYPTO_THREAD_unlock (int ) ;
 TYPE_2__* lh_SSL_SESSION_retrieve (int ,TYPE_2__*) ;
 int memcpy (int ,unsigned char const*,unsigned int) ;

int SSL_has_matching_session_id(const SSL *ssl, const unsigned char *id,
                                unsigned int id_len)
{







    SSL_SESSION r, *p;

    if (id_len > sizeof(r.session_id))
        return 0;

    r.ssl_version = ssl->version;
    r.session_id_length = id_len;
    memcpy(r.session_id, id, id_len);

    CRYPTO_THREAD_read_lock(ssl->session_ctx->lock);
    p = lh_SSL_SESSION_retrieve(ssl->session_ctx->sessions, &r);
    CRYPTO_THREAD_unlock(ssl->session_ctx->lock);
    return (p != ((void*)0));
}
