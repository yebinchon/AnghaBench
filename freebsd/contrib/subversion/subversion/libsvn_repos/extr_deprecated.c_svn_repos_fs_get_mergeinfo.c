
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_repos_t ;
typedef int svn_repos_authz_func_t ;
typedef int svn_mergeinfo_inheritance_t ;
typedef int svn_mergeinfo_catalog_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int mergeinfo_receiver ;
 int svn_hash__make (int *) ;
 int svn_repos_fs_get_mergeinfo2 (int *,int const*,int ,int ,int ,int ,void*,int ,int ,int *) ;

svn_error_t *
svn_repos_fs_get_mergeinfo(svn_mergeinfo_catalog_t *mergeinfo,
                           svn_repos_t *repos,
                           const apr_array_header_t *paths,
                           svn_revnum_t rev,
                           svn_mergeinfo_inheritance_t inherit,
                           svn_boolean_t include_descendants,
                           svn_repos_authz_func_t authz_read_func,
                           void *authz_read_baton,
                           apr_pool_t *pool)
{
  svn_mergeinfo_catalog_t result_catalog = svn_hash__make(pool);
  SVN_ERR(svn_repos_fs_get_mergeinfo2(repos, paths, rev, inherit,
                                      include_descendants,
                                      authz_read_func, authz_read_baton,
                                      mergeinfo_receiver, result_catalog,
                                      pool));
  *mergeinfo = result_catalog;

  return SVN_NO_ERROR;
}
