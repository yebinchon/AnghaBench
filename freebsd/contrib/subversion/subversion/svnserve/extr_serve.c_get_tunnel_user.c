
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* tunnel_user; int tunnel; } ;
typedef TYPE_1__ serve_params_t ;
typedef int apr_pool_t ;


 char const* svn_user_get_name (int *) ;

__attribute__((used)) static const char *get_tunnel_user(serve_params_t *params, apr_pool_t *pool)
{

  if (!params->tunnel)
    return ((void*)0);


  if (params->tunnel_user)
    return params->tunnel_user;

  return svn_user_get_name(pool);
}
