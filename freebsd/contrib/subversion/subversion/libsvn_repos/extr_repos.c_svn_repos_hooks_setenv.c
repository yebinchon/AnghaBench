
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pool; void* hooks_env_path; int conf_path; } ;
typedef TYPE_1__ svn_repos_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 char const* SVN_REPOS__CONF_HOOKS_ENV ;
 void* apr_pstrdup (int ,char const*) ;
 int svn_dirent_is_absolute (char const*) ;
 void* svn_dirent_join (int ,char const*,int ) ;

svn_error_t *
svn_repos_hooks_setenv(svn_repos_t *repos,
                       const char *hooks_env_path,
                       apr_pool_t *scratch_pool)
{
  if (hooks_env_path == ((void*)0))
    repos->hooks_env_path = svn_dirent_join(repos->conf_path,
                                            SVN_REPOS__CONF_HOOKS_ENV,
                                            repos->pool);
  else if (!svn_dirent_is_absolute(hooks_env_path))
    repos->hooks_env_path = svn_dirent_join(repos->conf_path,
                                            hooks_env_path,
                                            repos->pool);
  else
    repos->hooks_env_path = apr_pstrdup(repos->pool, hooks_env_path);

  return SVN_NO_ERROR;
}
