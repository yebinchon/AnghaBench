
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_commit_callback2_t ;
typedef int svn_client_ctx_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 int * svn_client_commit6 (int const*,int ,int ,int ,int ,int ,int ,int const*,int const*,int ,void*,int *,int *) ;

svn_error_t *
svn_client_commit5(const apr_array_header_t *targets,
                   svn_depth_t depth,
                   svn_boolean_t keep_locks,
                   svn_boolean_t keep_changelists,
                   svn_boolean_t commit_as_operations,
                   const apr_array_header_t *changelists,
                   const apr_hash_t *revprop_table,
                   svn_commit_callback2_t commit_callback,
                   void *commit_baton,
                   svn_client_ctx_t *ctx,
                   apr_pool_t *pool)
{
  return svn_client_commit6(targets, depth, keep_locks, keep_changelists,
                            commit_as_operations,
                            FALSE,
                            FALSE,
                            changelists, revprop_table, commit_callback,
                            commit_baton, ctx, pool);
}
