
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int SVN_DEPTH_INFINITY_OR_EMPTY (int ) ;
 int * svn_client_revert2 (int const*,int ,int *,int *,int *) ;

svn_error_t *
svn_client_revert(const apr_array_header_t *paths,
                  svn_boolean_t recursive,
                  svn_client_ctx_t *ctx,
                  apr_pool_t *pool)
{
  return svn_client_revert2(paths, SVN_DEPTH_INFINITY_OR_EMPTY(recursive),
                            ((void*)0), ctx, pool);
}
