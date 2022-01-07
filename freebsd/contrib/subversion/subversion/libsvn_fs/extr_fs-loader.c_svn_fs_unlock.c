
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct lock_baton_t {int * fs_err; int member_0; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int * apr_hash_make (int *) ;
 int lock_cb ;
 int svn_error_compose (int *,int *) ;
 int * svn_error_trace (int *) ;
 int * svn_fs_unlock_many (int *,int *,int ,int ,struct lock_baton_t*,int *,int *) ;
 int svn_hash_sets (int *,char const*,char const*) ;

svn_error_t *
svn_fs_unlock(svn_fs_t *fs, const char *path, const char *token,
              svn_boolean_t break_lock, apr_pool_t *pool)
{
  apr_hash_t *targets = apr_hash_make(pool);
  svn_error_t *err;
  struct lock_baton_t baton = {0};

  if (!token)
    token = "";
  svn_hash_sets(targets, path, token);

  err = svn_fs_unlock_many(fs, targets, break_lock, lock_cb, &baton,
                           pool, pool);

  if (err && baton.fs_err)
    svn_error_compose(err, baton.fs_err);
  else if (!err)
    err = baton.fs_err;

  return svn_error_trace(err);
}
