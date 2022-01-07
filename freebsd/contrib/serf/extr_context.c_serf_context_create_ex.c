
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int serf_socket_remove_t ;
typedef int serf_socket_add_t ;
struct TYPE_4__ {int pollset; } ;
typedef TYPE_1__ serf_pollset_t ;
struct TYPE_5__ {int server_authn_info; int authn_types; scalar_t__ progress_written; scalar_t__ progress_read; int conns; int pollset_rm; int pollset_add; TYPE_1__* pollset_baton; int * pool; } ;
typedef TYPE_2__ serf_context_t ;
typedef int serf_connection_t ;
typedef int apr_pool_t ;


 int APR_POLLSET_SELECT ;
 int MAX_CONN ;
 int SERF_AUTHN_ALL ;
 int apr_array_make (int *,int,int) ;
 int apr_hash_make (int *) ;
 void* apr_pcalloc (int *,int) ;
 int apr_pollset_create (int *,int ,int *,int ) ;
 int apr_pollset_create_ex (int *,int ,int *,int ,int ) ;
 int pollset_add ;
 int pollset_rm ;

serf_context_t *serf_context_create_ex(
    void *user_baton,
    serf_socket_add_t addf,
    serf_socket_remove_t rmf,
    apr_pool_t *pool)
{
    serf_context_t *ctx = apr_pcalloc(pool, sizeof(*ctx));

    ctx->pool = pool;

    if (user_baton != ((void*)0)) {
        ctx->pollset_baton = user_baton;
        ctx->pollset_add = addf;
        ctx->pollset_rm = rmf;
    }
    else {

        serf_pollset_t *ps = apr_pcalloc(pool, sizeof(*ps));
        (void) apr_pollset_create(&ps->pollset, MAX_CONN, pool, 0);

        ctx->pollset_baton = ps;
        ctx->pollset_add = pollset_add;
        ctx->pollset_rm = pollset_rm;
    }


    ctx->conns = apr_array_make(pool, 1, sizeof(serf_connection_t *));


    ctx->progress_read = 0;
    ctx->progress_written = 0;

    ctx->authn_types = SERF_AUTHN_ALL;
    ctx->server_authn_info = apr_hash_make(pool);

    return ctx;
}
