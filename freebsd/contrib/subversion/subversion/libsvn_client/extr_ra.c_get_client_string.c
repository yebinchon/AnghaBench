
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_4__ {TYPE_1__* ctx; } ;
typedef TYPE_2__ callback_baton_t ;
typedef int apr_pool_t ;
struct TYPE_3__ {int client_name; } ;


 int * SVN_NO_ERROR ;
 char* apr_pstrdup (int *,int ) ;

__attribute__((used)) static svn_error_t *
get_client_string(void *baton,
                  const char **name,
                  apr_pool_t *pool)
{
  callback_baton_t *b = baton;
  *name = apr_pstrdup(pool, b->ctx->client_name);
  return SVN_NO_ERROR;
}
