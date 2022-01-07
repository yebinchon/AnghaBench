
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_string_t ;
typedef int svn_revnum_t ;
struct TYPE_6__ {int fs; int hooks_env_path; } ;
typedef TYPE_1__ svn_repos_t ;
typedef scalar_t__ svn_repos_revision_access_level_t ;
typedef int svn_repos_authz_func_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_AUTHZ_UNREADABLE ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int svn_fs_change_rev_prop2 (int ,int ,char const*,int const**,int const*,int *) ;
 int svn_fs_revision_prop2 (int **,int ,int ,char const*,int ,int *,int *) ;
 int svn_repos__hooks_post_revprop_change (TYPE_1__*,int *,int ,char const*,char const*,int const*,char,int *) ;
 int svn_repos__hooks_pre_revprop_change (TYPE_1__*,int *,int ,char const*,char const*,int const*,char,int *) ;
 int svn_repos__parse_hooks_env (int **,int ,int *,int *) ;
 int svn_repos__validate_prop (char const*,int const*,int *) ;
 int svn_repos_check_revision_access (scalar_t__*,TYPE_1__*,int ,int ,void*,int *) ;
 scalar_t__ svn_repos_revision_access_full ;

svn_error_t *
svn_repos_fs_change_rev_prop4(svn_repos_t *repos,
                              svn_revnum_t rev,
                              const char *author,
                              const char *name,
                              const svn_string_t *const *old_value_p,
                              const svn_string_t *new_value,
                              svn_boolean_t use_pre_revprop_change_hook,
                              svn_boolean_t use_post_revprop_change_hook,
                              svn_repos_authz_func_t authz_read_func,
                              void *authz_read_baton,
                              apr_pool_t *pool)
{
  svn_repos_revision_access_level_t readability;

  SVN_ERR(svn_repos_check_revision_access(&readability, repos, rev,
                                          authz_read_func, authz_read_baton,
                                          pool));

  if (readability == svn_repos_revision_access_full)
    {
      const svn_string_t *old_value;
      char action;
      apr_hash_t *hooks_env;

      SVN_ERR(svn_repos__validate_prop(name, new_value, pool));


      if (old_value_p)
        {
          old_value = *old_value_p;
        }
      else
        {


          svn_string_t *old_value2;

          SVN_ERR(svn_fs_revision_prop2(&old_value2, repos->fs, rev, name,
                                        TRUE, pool, pool));
          old_value = old_value2;
        }


      if (! new_value)
        action = 'D';
      else if (! old_value)
        action = 'A';
      else
        action = 'M';


      if (use_pre_revprop_change_hook || use_post_revprop_change_hook)
        SVN_ERR(svn_repos__parse_hooks_env(&hooks_env, repos->hooks_env_path,
                                           pool, pool));


      if (use_pre_revprop_change_hook)
        SVN_ERR(svn_repos__hooks_pre_revprop_change(repos, hooks_env, rev,
                                                    author, name, new_value,
                                                    action, pool));

      SVN_ERR(svn_fs_change_rev_prop2(repos->fs, rev, name,
                                      &old_value, new_value, pool));

      if (use_post_revprop_change_hook)
        SVN_ERR(svn_repos__hooks_post_revprop_change(repos, hooks_env, rev,
                                                     author, name, old_value,
                                                     action, pool));
    }
  else
    {
      return svn_error_createf
        (SVN_ERR_AUTHZ_UNREADABLE, ((void*)0),
         _("Write denied:  not authorized to read all of revision %ld"), rev);
    }

  return SVN_NO_ERROR;
}
