
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hook_path; } ;
typedef TYPE_1__ svn_repos_t ;
typedef int apr_pool_t ;


 int SVN_REPOS__HOOK_POST_REVPROP_CHANGE ;
 char const* svn_dirent_join (int ,int ,int *) ;

const char *
svn_repos_post_revprop_change_hook(svn_repos_t *repos, apr_pool_t *pool)
{
  return svn_dirent_join(repos->hook_path, SVN_REPOS__HOOK_POST_REVPROP_CHANGE,
                       pool);
}
