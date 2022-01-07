
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int sess_cache_full; } ;
struct TYPE_10__ {int lock; TYPE_1__ stats; int session_cache_tail; int sessions; } ;
typedef int SSL_SESSION ;
typedef TYPE_2__ SSL_CTX ;


 int CRYPTO_THREAD_unlock (int ) ;
 int CRYPTO_THREAD_write_lock (int ) ;
 scalar_t__ SSL_CTX_sess_get_cache_size (TYPE_2__*) ;
 scalar_t__ SSL_CTX_sess_number (TYPE_2__*) ;
 int SSL_SESSION_free (int *) ;
 int SSL_SESSION_list_add (TYPE_2__*,int *) ;
 int SSL_SESSION_list_remove (TYPE_2__*,int *) ;
 int SSL_SESSION_up_ref (int *) ;
 int * lh_SSL_SESSION_insert (int ,int *) ;
 int * lh_SSL_SESSION_retrieve (int ,int *) ;
 int remove_session_lock (TYPE_2__*,int ,int ) ;
 int tsan_counter (int *) ;

int SSL_CTX_add_session(SSL_CTX *ctx, SSL_SESSION *c)
{
    int ret = 0;
    SSL_SESSION *s;






    SSL_SESSION_up_ref(c);




    CRYPTO_THREAD_write_lock(ctx->lock);
    s = lh_SSL_SESSION_insert(ctx->sessions, c);






    if (s != ((void*)0) && s != c) {

        SSL_SESSION_list_remove(ctx, s);
        SSL_SESSION_free(s);






        s = ((void*)0);
    } else if (s == ((void*)0) &&
               lh_SSL_SESSION_retrieve(ctx->sessions, c) == ((void*)0)) {






        s = c;
    }


    if (s == ((void*)0))
        SSL_SESSION_list_add(ctx, c);

    if (s != ((void*)0)) {





        SSL_SESSION_free(s);
        ret = 0;
    } else {




        ret = 1;

        if (SSL_CTX_sess_get_cache_size(ctx) > 0) {
            while (SSL_CTX_sess_number(ctx) > SSL_CTX_sess_get_cache_size(ctx)) {
                if (!remove_session_lock(ctx, ctx->session_cache_tail, 0))
                    break;
                else
                    tsan_counter(&ctx->stats.sess_cache_full);
            }
        }
    }
    CRYPTO_THREAD_unlock(ctx->lock);
    return ret;
}
