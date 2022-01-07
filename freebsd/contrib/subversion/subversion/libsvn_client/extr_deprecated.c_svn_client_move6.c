
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
 int TRUE ;
 int svn_client_move7 (int const*,char const*,int ,int ,int ,int ,int const*,int ,void*,int *,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_client_move6(const apr_array_header_t *src_paths,
                 const char *dst_path,
                 svn_boolean_t move_as_child,
                 svn_boolean_t make_parents,
                 const apr_hash_t *revprop_table,
                 svn_commit_callback2_t commit_callback,
                 void *commit_baton,
                 svn_client_ctx_t *ctx,
                 apr_pool_t *pool)
{
  return svn_error_trace(svn_client_move7(src_paths, dst_path,
                                          move_as_child, make_parents,
                                          TRUE ,
                                          FALSE ,
                                          revprop_table,
                                          commit_callback, commit_baton,
                                          ctx, pool));
}
