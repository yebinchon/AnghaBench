
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pool; int server_authn_info; } ;
typedef TYPE_1__ serf_context_t ;
struct TYPE_5__ {int host_url; TYPE_1__* ctx; } ;
typedef TYPE_2__ serf_connection_t ;
typedef int serf__authn_info_t ;


 int APR_HASH_KEY_STRING ;
 int * apr_hash_get (int ,int ,int ) ;
 int apr_hash_set (int ,int ,int ,int *) ;
 int * apr_pcalloc (int ,int) ;
 int apr_pstrdup (int ,int ) ;

serf__authn_info_t *serf__get_authn_info_for_server(serf_connection_t *conn)
{
    serf_context_t *ctx = conn->ctx;
    serf__authn_info_t *authn_info;

    authn_info = apr_hash_get(ctx->server_authn_info, conn->host_url,
                              APR_HASH_KEY_STRING);

    if (!authn_info) {
        authn_info = apr_pcalloc(ctx->pool, sizeof(serf__authn_info_t));
        apr_hash_set(ctx->server_authn_info,
                     apr_pstrdup(ctx->pool, conn->host_url),
                     APR_HASH_KEY_STRING, authn_info);
    }

    return authn_info;
}
