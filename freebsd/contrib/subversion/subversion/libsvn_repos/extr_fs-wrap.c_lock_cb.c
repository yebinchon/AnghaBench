
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_lock_t ;
typedef int svn_error_t ;
struct lock_baton_t {int fs_err; int const* lock; } ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int svn_error_dup (int *) ;

__attribute__((used)) static svn_error_t *
lock_cb(void *lock_baton,
        const char *path,
        const svn_lock_t *lock,
        svn_error_t *fs_err,
        apr_pool_t *pool)
{
  struct lock_baton_t *b = lock_baton;

  b->lock = lock;
  b->fs_err = svn_error_dup(fs_err);

  return SVN_NO_ERROR;
}
