
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {int (* remove_session_cb ) (TYPE_2__*,TYPE_1__*) ;int lock; int sessions; } ;
struct TYPE_14__ {scalar_t__ session_id_length; int not_resumable; } ;
typedef TYPE_1__ SSL_SESSION ;
typedef TYPE_2__ SSL_CTX ;


 int CRYPTO_THREAD_unlock (int ) ;
 int CRYPTO_THREAD_write_lock (int ) ;
 int SSL_SESSION_free (TYPE_1__*) ;
 int SSL_SESSION_list_remove (TYPE_2__*,TYPE_1__*) ;
 TYPE_1__* lh_SSL_SESSION_delete (int ,TYPE_1__*) ;
 TYPE_1__* lh_SSL_SESSION_retrieve (int ,TYPE_1__*) ;
 int stub1 (TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static int remove_session_lock(SSL_CTX *ctx, SSL_SESSION *c, int lck)
{
    SSL_SESSION *r;
    int ret = 0;

    if ((c != ((void*)0)) && (c->session_id_length != 0)) {
        if (lck)
            CRYPTO_THREAD_write_lock(ctx->lock);
        if ((r = lh_SSL_SESSION_retrieve(ctx->sessions, c)) != ((void*)0)) {
            ret = 1;
            r = lh_SSL_SESSION_delete(ctx->sessions, r);
            SSL_SESSION_list_remove(ctx, r);
        }
        c->not_resumable = 1;

        if (lck)
            CRYPTO_THREAD_unlock(ctx->lock);

        if (ctx->remove_session_cb != ((void*)0))
            ctx->remove_session_cb(ctx, c);

        if (ret)
            SSL_SESSION_free(r);
    } else
        ret = 0;
    return ret;
}
