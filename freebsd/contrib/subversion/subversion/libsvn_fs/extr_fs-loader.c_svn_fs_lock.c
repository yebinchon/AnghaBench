
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_lock_t ;
typedef int svn_fs_t ;
struct TYPE_3__ {char const* token; int current_rev; } ;
typedef TYPE_1__ svn_fs_lock_target_t ;
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
 int * svn_fs_lock_many (int *,int *,char const*,int ,int ,int ,int ,struct lock_baton_t*,int *,int *) ;
 int svn_hash_sets (int *,char const*,TYPE_1__*) ;

svn_error_t *
svn_fs_lock(svn_lock_t **lock, svn_fs_t *fs, const char *path,
            const char *token, const char *comment,
            svn_boolean_t is_dav_comment, apr_time_t expiration_date,
            svn_revnum_t current_rev, svn_boolean_t steal_lock,
            apr_pool_t *pool)
{
  apr_hash_t *targets = apr_hash_make(pool);
  svn_fs_lock_target_t target;
  svn_error_t *err;
  struct lock_baton_t baton = {0};

  target.token = token;
  target.current_rev = current_rev;
  svn_hash_sets(targets, path, &target);

  err = svn_fs_lock_many(fs, targets, comment, is_dav_comment,
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
