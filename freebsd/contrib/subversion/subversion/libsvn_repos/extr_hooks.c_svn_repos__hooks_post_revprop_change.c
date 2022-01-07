
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
typedef int apr_hash_t ;
typedef int apr_file_t ;


 int APR_OS_DEFAULT ;
 int APR_READ ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_NULL_DEVICE_NAME ;
 int SVN_REPOS__HOOK_POST_REVPROP_CHANGE ;
 char* apr_psprintf (int *,char*,int ) ;
 char* check_hook_cmd (char const*,scalar_t__*,int *) ;
 int create_temp_file (int **,int const*,int *) ;
 int * hook_symlink_error (char const*) ;
 int run_hook_cmd (int *,int ,char const*,char const**,int *,int *,int *) ;
 char* svn_dirent_local_style (int ,int *) ;
 int svn_io_file_close (int *,int *) ;
 int svn_io_file_open (int **,int ,int ,int ,int *) ;
 int svn_repos_path (int *,int *) ;
 char* svn_repos_post_revprop_change_hook (int *,int *) ;

svn_error_t *
svn_repos__hooks_post_revprop_change(svn_repos_t *repos,
                                     apr_hash_t *hooks_env,
                                     svn_revnum_t rev,
                                     const char *author,
                                     const char *name,
                                     const svn_string_t *old_value,
                                     char action,
                                     apr_pool_t *pool)
{
  const char *hook = svn_repos_post_revprop_change_hook(repos, pool);
  svn_boolean_t broken_link;

  if ((hook = check_hook_cmd(hook, &broken_link, pool)) && broken_link)
    {
      return hook_symlink_error(hook);
    }
  else if (hook)
    {
      const char *args[7];
      apr_file_t *stdin_handle = ((void*)0);
      char action_string[2];


      if (old_value)
        SVN_ERR(create_temp_file(&stdin_handle, old_value, pool));
      else
        SVN_ERR(svn_io_file_open(&stdin_handle, SVN_NULL_DEVICE_NAME,
                                 APR_READ, APR_OS_DEFAULT, pool));

      action_string[0] = action;
      action_string[1] = '\0';

      args[0] = hook;
      args[1] = svn_dirent_local_style(svn_repos_path(repos, pool), pool);
      args[2] = apr_psprintf(pool, "%ld", rev);
      args[3] = author ? author : "";
      args[4] = name;
      args[5] = action_string;
      args[6] = ((void*)0);

      SVN_ERR(run_hook_cmd(((void*)0), SVN_REPOS__HOOK_POST_REVPROP_CHANGE, hook,
                           args, hooks_env, stdin_handle, pool));

      SVN_ERR(svn_io_file_close(stdin_handle, pool));
    }

  return SVN_NO_ERROR;
}
