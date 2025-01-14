
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_7__ {TYPE_3__* priv; } ;
typedef TYPE_2__ svn_ra_session_t ;
typedef int svn_ra_lock_callback_t ;
struct TYPE_8__ {int repos; TYPE_1__* fs_path; } ;
typedef TYPE_3__ svn_ra_local__session_baton_t ;
typedef int svn_fs_lock_target_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct lock_baton_t {int * cb_err; int is_lock; int fs_path; void* lock_baton; int lock_func; int member_0; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;
struct TYPE_6__ {int data; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 int apr_hash_this_key (int *) ;
 scalar_t__ apr_hash_this_val (int *) ;
 int get_username (TYPE_2__*,int *) ;
 int lock_cb ;
 int svn_error_compose (int *,int *) ;
 int * svn_error_trace (int *) ;
 int * svn_fs_lock_target_create (int *,int ,int *) ;
 char* svn_fspath__join (int ,int ,int *) ;
 int svn_hash_sets (int *,char const*,int *) ;
 int * svn_repos_fs_lock_many (int ,int *,char const*,int ,int ,int ,int ,struct lock_baton_t*,int *,int *) ;

__attribute__((used)) static svn_error_t *
svn_ra_local__lock(svn_ra_session_t *session,
                   apr_hash_t *path_revs,
                   const char *comment,
                   svn_boolean_t force,
                   svn_ra_lock_callback_t lock_func,
                   void *lock_baton,
                   apr_pool_t *pool)
{
  svn_ra_local__session_baton_t *sess = session->priv;
  apr_hash_t *targets = apr_hash_make(pool);
  apr_hash_index_t *hi;
  svn_error_t *err;
  struct lock_baton_t baton = {0};


  SVN_ERR(get_username(session, pool));

  for (hi = apr_hash_first(pool, path_revs); hi; hi = apr_hash_next(hi))
    {
      const char *abs_path = svn_fspath__join(sess->fs_path->data,
                                              apr_hash_this_key(hi), pool);
      svn_revnum_t current_rev = *(svn_revnum_t *)apr_hash_this_val(hi);
      svn_fs_lock_target_t *target = svn_fs_lock_target_create(((void*)0),
                                                               current_rev,
                                                               pool);

      svn_hash_sets(targets, abs_path, target);
    }

  baton.lock_func = lock_func;
  baton.lock_baton = lock_baton;
  baton.fs_path = sess->fs_path->data;
  baton.is_lock = TRUE;
  baton.cb_err = SVN_NO_ERROR;

  err = svn_repos_fs_lock_many(sess->repos, targets, comment,
                               FALSE ,
                               0 , force,
                               lock_cb, &baton,
                               pool, pool);

  if (err && baton.cb_err)
    svn_error_compose(err, baton.cb_err);
  else if (!err)
    err = baton.cb_err;

  return svn_error_trace(err);
}
