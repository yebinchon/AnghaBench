
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_opt_revision_t ;
typedef int svn_error_t ;
typedef int svn_client_list_func_t ;
typedef int svn_client_ctx_t ;
typedef int svn_boolean_t ;
typedef int apr_uint32_t ;
typedef int apr_pool_t ;


 int SVN_DEPTH_INFINITY_OR_IMMEDIATES (int ) ;
 int * svn_client_list2 (char const*,int const*,int const*,int ,int ,int ,int ,void*,int *,int *) ;

svn_error_t *
svn_client_list(const char *path_or_url,
                const svn_opt_revision_t *peg_revision,
                const svn_opt_revision_t *revision,
                svn_boolean_t recurse,
                apr_uint32_t dirent_fields,
                svn_boolean_t fetch_locks,
                svn_client_list_func_t list_func,
                void *baton,
                svn_client_ctx_t *ctx,
                apr_pool_t *pool)
{
  return svn_client_list2(path_or_url,
                          peg_revision,
                          revision,
                          SVN_DEPTH_INFINITY_OR_IMMEDIATES(recurse),
                          dirent_fields,
                          fetch_locks,
                          list_func,
                          baton,
                          ctx,
                          pool);
}
