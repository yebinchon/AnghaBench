
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_repos_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_REPOS__HOOK_START_COMMIT ;
 char* apr_pstrdup (int *,char*) ;
 char* check_hook_cmd (char const*,scalar_t__*,int *) ;
 int * hook_symlink_error (char const*) ;
 int run_hook_cmd (int *,int ,char const*,char const**,int *,int *,int *) ;
 char* svn_cstring_join2 (int const*,char*,int ,int *) ;
 char* svn_dirent_local_style (int ,int *) ;
 int svn_repos_path (int *,int *) ;
 char* svn_repos_start_commit_hook (int *,int *) ;

svn_error_t *
svn_repos__hooks_start_commit(svn_repos_t *repos,
                              apr_hash_t *hooks_env,
                              const char *user,
                              const apr_array_header_t *capabilities,
                              const char *txn_name,
                              apr_pool_t *pool)
{
  const char *hook = svn_repos_start_commit_hook(repos, pool);
  svn_boolean_t broken_link;

  if ((hook = check_hook_cmd(hook, &broken_link, pool)) && broken_link)
    {
      return hook_symlink_error(hook);
    }
  else if (hook)
    {
      const char *args[6];
      char *capabilities_string;

      if (capabilities)
        {
          capabilities_string = svn_cstring_join2(capabilities, ":",
                                                  FALSE, pool);
        }
      else
        {
          capabilities_string = apr_pstrdup(pool, "");
        }

      args[0] = hook;
      args[1] = svn_dirent_local_style(svn_repos_path(repos, pool), pool);
      args[2] = user ? user : "";
      args[3] = capabilities_string;
      args[4] = txn_name;
      args[5] = ((void*)0);

      SVN_ERR(run_hook_cmd(((void*)0), SVN_REPOS__HOOK_START_COMMIT, hook, args,
                           hooks_env, ((void*)0), pool));
    }

  return SVN_NO_ERROR;
}
