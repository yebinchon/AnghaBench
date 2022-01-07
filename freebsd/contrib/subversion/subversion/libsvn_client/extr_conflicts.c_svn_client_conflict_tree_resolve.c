
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int svn_client_conflict_t ;
struct TYPE_4__ {int (* do_resolve_func ) (TYPE_1__*,int *,int *,int *) ;} ;
typedef TYPE_1__ svn_client_conflict_option_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int assert_tree_conflict (int *,int *) ;
 int stub1 (TYPE_1__*,int *,int *,int *) ;

svn_error_t *
svn_client_conflict_tree_resolve(svn_client_conflict_t *conflict,
                                 svn_client_conflict_option_t *option,
                                 svn_client_ctx_t *ctx,
                                 apr_pool_t *scratch_pool)
{
  SVN_ERR(assert_tree_conflict(conflict, scratch_pool));
  SVN_ERR(option->do_resolve_func(option, conflict, ctx, scratch_pool));

  return SVN_NO_ERROR;
}
