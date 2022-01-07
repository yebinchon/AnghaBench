
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_commit_callback2_t ;
typedef int svn_client_ctx_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 int svn_client_copy7 (int const*,char const*,int ,int ,int ,int ,int ,int *,int const*,int ,void*,int *,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_client_copy6(const apr_array_header_t *sources,
                 const char *dst_path,
                 svn_boolean_t copy_as_child,
                 svn_boolean_t make_parents,
                 svn_boolean_t ignore_externals,
                 const apr_hash_t *revprop_table,
                 svn_commit_callback2_t commit_callback,
                 void *commit_baton,
                 svn_client_ctx_t *ctx,
                 apr_pool_t *pool)
{
  return svn_error_trace(svn_client_copy7(sources, dst_path, copy_as_child,
                                          make_parents, ignore_externals,
                                          FALSE ,
                                          FALSE ,
                                          ((void*)0) ,
                                          revprop_table,
                                          commit_callback, commit_baton,
                                          ctx, pool));
}
