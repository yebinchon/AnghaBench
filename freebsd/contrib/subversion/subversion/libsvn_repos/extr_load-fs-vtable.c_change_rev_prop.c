
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int svn_revnum_t ;
typedef int svn_repos_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * svn_fs_change_rev_prop2 (int ,int ,char const*,int *,int const*,int *) ;
 int svn_repos__normalize_prop (int const**,int *,char const*,int const*,int *,int *) ;
 int svn_repos_fs (int *) ;
 int * svn_repos_fs_change_rev_prop4 (int *,int ,int *,char const*,int *,int const*,int ,int ,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
change_rev_prop(svn_repos_t *repos,
                svn_revnum_t revision,
                const char *name,
                const svn_string_t *value,
                svn_boolean_t validate_props,
                svn_boolean_t normalize_props,
                apr_pool_t *pool)
{
  if (normalize_props)
    SVN_ERR(svn_repos__normalize_prop(&value, ((void*)0), name, value, pool, pool));

  if (validate_props)
    return svn_repos_fs_change_rev_prop4(repos, revision, ((void*)0), name,
                                         ((void*)0), value, FALSE, FALSE,
                                         ((void*)0), ((void*)0), pool);
  else
    return svn_fs_change_rev_prop2(svn_repos_fs(repos), revision, name,
                                   ((void*)0), value, pool);
}
