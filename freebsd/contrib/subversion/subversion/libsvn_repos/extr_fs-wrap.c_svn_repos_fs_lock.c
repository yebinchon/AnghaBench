
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_repos_t ;
typedef int svn_lock_t ;
typedef int svn_fs_lock_target_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct lock_baton_t {int * fs_err; scalar_t__ lock; int member_0; } ;
typedef int apr_time_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int * apr_hash_make (int *) ;
 int lock_cb ;
 int svn_error_compose (int *,int *) ;
 int * svn_error_trace (int *) ;
 int * svn_fs_lock_target_create (char const*,int ,int *) ;
 int svn_hash_sets (int *,char const*,int *) ;
 int * svn_repos_fs_lock_many (int *,int *,char const*,int ,int ,int ,int ,struct lock_baton_t*,int *,int *) ;

svn_error_t *
svn_repos_fs_lock(svn_lock_t **lock,
                  svn_repos_t *repos,
                  const char *path,
                  const char *token,
                  const char *comment,
                  svn_boolean_t is_dav_comment,
                  apr_time_t expiration_date,
                  svn_revnum_t current_rev,
                  svn_boolean_t steal_lock,
                  apr_pool_t *pool)
{
  apr_hash_t *targets = apr_hash_make(pool);
  svn_fs_lock_target_t *target = svn_fs_lock_target_create(token, current_rev,
                                                           pool);
  svn_error_t *err;
  struct lock_baton_t baton = {0};

  svn_hash_sets(targets, path, target);

  err = svn_repos_fs_lock_many(repos, targets, comment, is_dav_comment,
                               expiration_date, steal_lock, lock_cb, &baton,
                               pool, pool);

  if (baton.lock)
    *lock = (svn_lock_t*)baton.lock;

  if (err && baton.fs_err)
    svn_error_compose(err, baton.fs_err);
  else if (!err)
    err = baton.fs_err;

  return svn_error_trace(err);
}
