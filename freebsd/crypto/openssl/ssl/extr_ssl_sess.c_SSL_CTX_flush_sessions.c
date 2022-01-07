
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int lock; int * sessions; } ;
struct TYPE_5__ {long time; int * cache; TYPE_2__* ctx; } ;
typedef TYPE_1__ TIMEOUT_PARAM ;
typedef TYPE_2__ SSL_CTX ;


 int CRYPTO_THREAD_unlock (int ) ;
 int CRYPTO_THREAD_write_lock (int ) ;
 int lh_SSL_SESSION_doall_TIMEOUT_PARAM (int *,int ,TYPE_1__*) ;
 unsigned long lh_SSL_SESSION_get_down_load (int *) ;
 int lh_SSL_SESSION_set_down_load (int *,unsigned long) ;
 int timeout_cb ;

void SSL_CTX_flush_sessions(SSL_CTX *s, long t)
{
    unsigned long i;
    TIMEOUT_PARAM tp;

    tp.ctx = s;
    tp.cache = s->sessions;
    if (tp.cache == ((void*)0))
        return;
    tp.time = t;
    CRYPTO_THREAD_write_lock(s->lock);
    i = lh_SSL_SESSION_get_down_load(s->sessions);
    lh_SSL_SESSION_set_down_load(s->sessions, 0);
    lh_SSL_SESSION_doall_TIMEOUT_PARAM(tp.cache, timeout_cb, &tp);
    lh_SSL_SESSION_set_down_load(s->sessions, i);
    CRYPTO_THREAD_unlock(s->lock);
}
