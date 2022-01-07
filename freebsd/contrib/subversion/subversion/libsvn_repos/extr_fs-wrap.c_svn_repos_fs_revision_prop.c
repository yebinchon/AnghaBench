
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_string_t ;
typedef int svn_revnum_t ;
struct TYPE_4__ {int fs; } ;
typedef TYPE_1__ svn_repos_t ;
typedef scalar_t__ svn_repos_revision_access_level_t ;
typedef int svn_repos_authz_func_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_REVISION_AUTHOR ;
 int SVN_PROP_REVISION_DATE ;
 int TRUE ;
 scalar_t__ strcmp (char const*,int ) ;
 int svn_fs_revision_prop2 (int **,int ,int ,char const*,int ,int *,int *) ;
 int svn_repos_check_revision_access (scalar_t__*,TYPE_1__*,int ,int ,void*,int *) ;
 scalar_t__ svn_repos_revision_access_none ;
 scalar_t__ svn_repos_revision_access_partial ;

svn_error_t *
svn_repos_fs_revision_prop(svn_string_t **value_p,
                           svn_repos_t *repos,
                           svn_revnum_t rev,
                           const char *propname,
                           svn_repos_authz_func_t authz_read_func,
                           void *authz_read_baton,
                           apr_pool_t *pool)
{
  svn_repos_revision_access_level_t readability;

  SVN_ERR(svn_repos_check_revision_access(&readability, repos, rev,
                                          authz_read_func, authz_read_baton,
                                          pool));

  if (readability == svn_repos_revision_access_none)
    {

      *value_p = ((void*)0);
    }
  else if (readability == svn_repos_revision_access_partial)
    {

      if ((strcmp(propname, SVN_PROP_REVISION_AUTHOR) != 0)
          && (strcmp(propname, SVN_PROP_REVISION_DATE) != 0))
        *value_p = ((void*)0);

      else
        SVN_ERR(svn_fs_revision_prop2(value_p, repos->fs,
                                      rev, propname, TRUE, pool, pool));
    }
  else
    {
      SVN_ERR(svn_fs_revision_prop2(value_p, repos->fs, rev, propname, TRUE,
                                    pool, pool));
    }

  return SVN_NO_ERROR;
}
