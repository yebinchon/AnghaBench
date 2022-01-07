
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_opt_revision_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_client_list_func_t ;
typedef int svn_client_list_func2_t ;
typedef int svn_client_ctx_t ;
typedef int svn_boolean_t ;
typedef int apr_uint32_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int * svn_client_list3 (char const*,int const*,int const*,int ,int ,int ,int ,int ,void*,int *,int *) ;
 int wrap_list_func (int *,void**,int ,void*,int *) ;

svn_error_t *
svn_client_list2(const char *path_or_url,
                 const svn_opt_revision_t *peg_revision,
                 const svn_opt_revision_t *revision,
                 svn_depth_t depth,
                 apr_uint32_t dirent_fields,
                 svn_boolean_t fetch_locks,
                 svn_client_list_func_t list_func,
                 void *baton,
                 svn_client_ctx_t *ctx,
                 apr_pool_t *pool)
{
  svn_client_list_func2_t list_func2;
  void *list_func2_baton;

  wrap_list_func(&list_func2, &list_func2_baton, list_func, baton, pool);

  return svn_client_list3(path_or_url, peg_revision, revision, depth,
                          dirent_fields, fetch_locks,
                          FALSE ,
                          list_func2, list_func2_baton, ctx, pool);
}
