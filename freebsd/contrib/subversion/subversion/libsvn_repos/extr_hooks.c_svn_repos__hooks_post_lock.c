
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int svn_repos_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_file_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_REPOS__HOOK_POST_LOCK ;
 int TRUE ;
 char* check_hook_cmd (char const*,scalar_t__*,int *) ;
 int create_temp_file (int **,int *,int *) ;
 int * hook_symlink_error (char const*) ;
 int run_hook_cmd (int *,int ,char const*,char const**,int *,int *,int *) ;
 int svn_cstring_join2 (int const*,char*,int ,int *) ;
 char* svn_dirent_local_style (int ,int *) ;
 int svn_io_file_close (int *,int *) ;
 int svn_repos_path (int *,int *) ;
 char* svn_repos_post_lock_hook (int *,int *) ;
 int * svn_string_create (int ,int *) ;

svn_error_t *
svn_repos__hooks_post_lock(svn_repos_t *repos,
                           apr_hash_t *hooks_env,
                           const apr_array_header_t *paths,
                           const char *username,
                           apr_pool_t *pool)
{
  const char *hook = svn_repos_post_lock_hook(repos, pool);
  svn_boolean_t broken_link;

  if ((hook = check_hook_cmd(hook, &broken_link, pool)) && broken_link)
    {
      return hook_symlink_error(hook);
    }
  else if (hook)
    {
      const char *args[5];
      apr_file_t *stdin_handle = ((void*)0);
      svn_string_t *paths_str = svn_string_create(svn_cstring_join2
                                                  (paths, "\n", TRUE, pool),
                                                  pool);

      SVN_ERR(create_temp_file(&stdin_handle, paths_str, pool));

      args[0] = hook;
      args[1] = svn_dirent_local_style(svn_repos_path(repos, pool), pool);
      args[2] = username;
      args[3] = ((void*)0);
      args[4] = ((void*)0);

      SVN_ERR(run_hook_cmd(((void*)0), SVN_REPOS__HOOK_POST_LOCK, hook, args,
                           hooks_env, stdin_handle, pool));

      SVN_ERR(svn_io_file_close(stdin_handle, pool));
    }

  return SVN_NO_ERROR;
}
