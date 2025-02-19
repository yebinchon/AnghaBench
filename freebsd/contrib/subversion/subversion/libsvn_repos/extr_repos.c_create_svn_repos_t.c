
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * pool; int repository_capabilities; int * hooks_env_path; void* lock_path; void* hook_path; void* conf_path; void* db_path; int path; } ;
typedef TYPE_1__ svn_repos_t ;
typedef int apr_pool_t ;


 int SVN_REPOS__CONF_DIR ;
 int SVN_REPOS__DB_DIR ;
 int SVN_REPOS__HOOK_DIR ;
 int SVN_REPOS__LOCK_DIR ;
 int apr_hash_make (int *) ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int apr_pstrdup (int *,char const*) ;
 void* svn_dirent_join (char const*,int ,int *) ;

__attribute__((used)) static svn_repos_t *
create_svn_repos_t(const char *path, apr_pool_t *pool)
{
  svn_repos_t *repos = apr_pcalloc(pool, sizeof(*repos));

  repos->path = apr_pstrdup(pool, path);
  repos->db_path = svn_dirent_join(path, SVN_REPOS__DB_DIR, pool);
  repos->conf_path = svn_dirent_join(path, SVN_REPOS__CONF_DIR, pool);
  repos->hook_path = svn_dirent_join(path, SVN_REPOS__HOOK_DIR, pool);
  repos->lock_path = svn_dirent_join(path, SVN_REPOS__LOCK_DIR, pool);
  repos->hooks_env_path = ((void*)0);
  repos->repository_capabilities = apr_hash_make(pool);
  repos->pool = pool;

  return repos;
}
