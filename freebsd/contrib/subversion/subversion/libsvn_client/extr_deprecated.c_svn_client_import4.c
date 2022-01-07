
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


 int FALSE ;
 int svn_client_import5 (char const*,char const*,int ,int ,int ,int ,int const*,int *,int *,int ,void*,int *,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_client_import4(const char *path,
                   const char *url,
                   svn_depth_t depth,
                   svn_boolean_t no_ignore,
                   svn_boolean_t ignore_unknown_node_types,
                   const apr_hash_t *revprop_table,
                   svn_commit_callback2_t commit_callback,
                   void *commit_baton,
                   svn_client_ctx_t *ctx,
                   apr_pool_t *pool)
{
  return svn_error_trace(svn_client_import5(path, url, depth, no_ignore,
                                            FALSE, ignore_unknown_node_types,
                                            revprop_table,
                                            ((void*)0), ((void*)0),
                                            commit_callback, commit_baton,
                                            ctx, pool));
}
