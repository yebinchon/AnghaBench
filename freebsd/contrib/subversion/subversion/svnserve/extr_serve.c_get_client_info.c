
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int svn_ra_svn_conn_t ;
struct TYPE_7__ {int tunnel; } ;
typedef TYPE_1__ serve_params_t ;
struct TYPE_8__ {int remote_host; int * authz_user; int * user; int tunnel_user; int tunnel; } ;
typedef TYPE_2__ client_info_t ;
typedef int apr_pool_t ;


 TYPE_2__* apr_pcalloc (int *,int) ;
 int get_tunnel_user (TYPE_1__*,int *) ;
 int svn_ra_svn_conn_remote_host (int *) ;

client_info_t *
get_client_info(svn_ra_svn_conn_t *conn,
                serve_params_t *params,
                apr_pool_t *pool)
{
  client_info_t *client_info = apr_pcalloc(pool, sizeof(*client_info));

  client_info->tunnel = params->tunnel;
  client_info->tunnel_user = get_tunnel_user(params, pool);
  client_info->user = ((void*)0);
  client_info->authz_user = ((void*)0);
  client_info->remote_host = svn_ra_svn_conn_remote_host(conn);

  return client_info;
}
