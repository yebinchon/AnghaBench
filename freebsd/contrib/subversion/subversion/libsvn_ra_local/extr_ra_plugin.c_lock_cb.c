
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_lock_t ;
typedef int svn_error_t ;
struct lock_baton_t {int is_lock; int lock_baton; scalar_t__ (* lock_func ) (int ,char const*,int ,int const*,int *,int *) ;scalar_t__ cb_err; int fs_path; } ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 scalar_t__ stub1 (int ,char const*,int ,int const*,int *,int *) ;
 char* svn_fspath__skip_ancestor (int ,char const*) ;

__attribute__((used)) static svn_error_t *
lock_cb(void *lock_baton,
        const char *path,
        const svn_lock_t *lock,
        svn_error_t *fs_err,
        apr_pool_t *pool)
{
  struct lock_baton_t *b = lock_baton;

  if (b && !b->cb_err && b->lock_func)
    {
      path = svn_fspath__skip_ancestor(b->fs_path, path);
      b->cb_err = b->lock_func(b->lock_baton, path, b->is_lock, lock, fs_err,
                               pool);
    }

  return SVN_NO_ERROR;
}
