
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_opt_revision_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_client_list_func2_t ;
typedef int svn_client_ctx_t ;
typedef int svn_boolean_t ;
typedef int apr_uint32_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int list_internal (char const*,int const*,int const*,int const*,int ,int ,int ,int ,int *,int *,int ,void*,int *,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_client_list4(const char *path_or_url,
                 const svn_opt_revision_t *peg_revision,
                 const svn_opt_revision_t *revision,
                 const apr_array_header_t *patterns,
                 svn_depth_t depth,
                 apr_uint32_t dirent_fields,
                 svn_boolean_t fetch_locks,
                 svn_boolean_t include_externals,
                 svn_client_list_func2_t list_func,
                 void *baton,
                 svn_client_ctx_t *ctx,
                 apr_pool_t *scratch_pool)
{

  return svn_error_trace(list_internal(path_or_url, peg_revision,
                                       revision, patterns,
                                       depth, dirent_fields,
                                       fetch_locks,
                                       include_externals,
                                       ((void*)0), ((void*)0), list_func,
                                       baton, ctx, scratch_pool));
}
