
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int svn_revnum_t ;
typedef int svn_repos_t ;
typedef int svn_repos_authz_func_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int * svn_repos_fs_change_rev_prop4 (int *,int ,char const*,char const*,int *,int const*,int ,int ,int ,void*,int *) ;

svn_error_t *
svn_repos_fs_change_rev_prop3(svn_repos_t *repos,
                              svn_revnum_t rev,
                              const char *author,
                              const char *name,
                              const svn_string_t *new_value,
                              svn_boolean_t use_pre_revprop_change_hook,
                              svn_boolean_t use_post_revprop_change_hook,
                              svn_repos_authz_func_t authz_read_func,
                              void *authz_read_baton,
                              apr_pool_t *pool)
{
  return svn_repos_fs_change_rev_prop4(repos, rev, author, name, ((void*)0),
                                       new_value,
                                       use_pre_revprop_change_hook,
                                       use_post_revprop_change_hook,
                                       authz_read_func,
                                       authz_read_baton, pool);
}
