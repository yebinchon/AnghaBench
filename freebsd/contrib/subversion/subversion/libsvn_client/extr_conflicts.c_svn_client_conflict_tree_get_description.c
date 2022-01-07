
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
struct TYPE_5__ {int (* tree_conflict_get_local_description_func ) (char const**,TYPE_1__*,int *,int *,int *) ;int (* tree_conflict_get_incoming_description_func ) (char const**,TYPE_1__*,int *,int *,int *) ;} ;
typedef TYPE_1__ svn_client_conflict_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (char const**,TYPE_1__*,int *,int *,int *) ;
 int stub2 (char const**,TYPE_1__*,int *,int *,int *) ;

svn_error_t *
svn_client_conflict_tree_get_description(
  const char **incoming_change_description,
  const char **local_change_description,
  svn_client_conflict_t *conflict,
  svn_client_ctx_t *ctx,
  apr_pool_t *result_pool,
  apr_pool_t *scratch_pool)
{
  SVN_ERR(conflict->tree_conflict_get_incoming_description_func(
            incoming_change_description,
            conflict, ctx, result_pool, scratch_pool));

  SVN_ERR(conflict->tree_conflict_get_local_description_func(
            local_change_description,
            conflict, ctx, result_pool, scratch_pool));

  return SVN_NO_ERROR;
}
