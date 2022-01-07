
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int svn_lock_t ;
struct TYPE_7__ {int path; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int digest_path_from_path (char const**,int ,char const*,int *) ;
 int get_lock_helper (TYPE_1__*,int **,char const*,scalar_t__,int *) ;
 int get_locks_callback ;
 char* svn_fs__canonicalize_abspath (char const*,int *) ;
 int verify_lock (TYPE_1__*,int *) ;
 int walk_locks (TYPE_1__*,char const*,int ,TYPE_1__*,scalar_t__,int *) ;

svn_error_t *
svn_fs_x__allow_locked_operation(const char *path,
                                 svn_fs_t *fs,
                                 svn_boolean_t recurse,
                                 svn_boolean_t have_write_lock,
                                 apr_pool_t *scratch_pool)
{
  path = svn_fs__canonicalize_abspath(path, scratch_pool);
  if (recurse)
    {

      const char *digest_path;
      SVN_ERR(digest_path_from_path(&digest_path, fs->path, path,
                                    scratch_pool));
      SVN_ERR(walk_locks(fs, digest_path, get_locks_callback,
                         fs, have_write_lock, scratch_pool));
    }
  else
    {

      svn_lock_t *lock;
      SVN_ERR(get_lock_helper(fs, &lock, path, have_write_lock,
                              scratch_pool));
      if (lock)
        SVN_ERR(verify_lock(fs, lock));
    }
  return SVN_NO_ERROR;
}
