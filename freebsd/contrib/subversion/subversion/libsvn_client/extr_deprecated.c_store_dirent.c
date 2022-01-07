
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ kind; } ;
typedef TYPE_1__ svn_lock_t ;
typedef int svn_error_t ;
typedef TYPE_1__ svn_dirent_t ;
struct ls_baton {int locks; int dirents; int pool; } ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 char* apr_pstrdup (int ,char const*) ;
 TYPE_1__* svn_dirent_dup (TYPE_1__ const*,int ) ;
 int svn_hash_sets (int ,char const*,TYPE_1__ const*) ;
 scalar_t__ svn_node_file ;
 char* svn_path_basename (char const*,int ) ;

__attribute__((used)) static svn_error_t *
store_dirent(void *baton, const char *path, const svn_dirent_t *dirent,
             const svn_lock_t *lock, const char *abs_path, apr_pool_t *pool)
{
  struct ls_baton *lb = baton;




  dirent = svn_dirent_dup(dirent, lb->pool);







  if (path[0] == '\0')
    {
      if (dirent->kind == svn_node_file)
        {
          const char *base_name = svn_path_basename(abs_path, lb->pool);
          svn_hash_sets(lb->dirents, base_name, dirent);
          if (lock)
            svn_hash_sets(lb->locks, base_name, lock);
        }
    }
  else
    {
      path = apr_pstrdup(lb->pool, path);
      svn_hash_sets(lb->dirents, path, dirent);
      if (lock)
        svn_hash_sets(lb->locks, path, lock);
    }

  return SVN_NO_ERROR;
}
