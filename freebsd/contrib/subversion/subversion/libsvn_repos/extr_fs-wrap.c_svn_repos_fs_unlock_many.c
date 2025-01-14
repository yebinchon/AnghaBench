
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int fs; int hooks_env_path; } ;
typedef TYPE_1__ svn_repos_t ;
typedef int * (* svn_fs_lock_callback_t ) (void*,char const*,int *,int *,int *) ;
typedef int svn_fs_access_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct lock_many_baton_t {TYPE_5__* paths; int * pool; int * cb_err; void* lock_baton; int * (* lock_callback ) (void*,char const*,int *,int *,int *) ;int need_lock; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;
struct TYPE_8__ {scalar_t__ nelts; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_FS_NO_USER ;
 int SVN_ERR_REPOS_POST_UNLOCK_HOOK_FAILED ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 TYPE_5__* apr_array_make (int *,int ,int) ;
 int apr_hash_count (int *) ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 char* apr_hash_this_val (int *) ;
 int lock_many_cb ;
 int svn_error_clear (int *) ;
 int svn_error_compose (int *,int *) ;
 int * svn_error_compose_create (int *,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_trace (int *) ;
 int svn_fs_access_get_username (char const**,int *) ;
 int svn_fs_get_access (int **,int ) ;
 int * svn_fs_unlock_many (int ,int *,int ,int ,struct lock_many_baton_t*,int *,int *) ;
 int svn_hash_sets (int *,char const*,char const*) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int * svn_repos__hooks_post_unlock (TYPE_1__*,int *,TYPE_5__*,char const*,int *) ;
 int * svn_repos__hooks_pre_unlock (TYPE_1__*,int *,char const*,char const*,char const*,int ,int *) ;
 int svn_repos__parse_hooks_env (int **,int ,int *,int *) ;

svn_error_t *
svn_repos_fs_unlock_many(svn_repos_t *repos,
                         apr_hash_t *targets,
                         svn_boolean_t break_lock,
                         svn_fs_lock_callback_t lock_callback,
                         void *lock_baton,
                         apr_pool_t *result_pool,
                         apr_pool_t *scratch_pool)
{
  svn_error_t *err, *cb_err = SVN_NO_ERROR;
  svn_fs_access_t *access_ctx = ((void*)0);
  const char *username = ((void*)0);
  apr_hash_t *hooks_env;
  apr_hash_t *pre_targets = apr_hash_make(scratch_pool);
  apr_hash_index_t *hi;
  apr_pool_t *iterpool = svn_pool_create(scratch_pool);
  struct lock_many_baton_t baton;

  if (!apr_hash_count(targets))
    return SVN_NO_ERROR;


  SVN_ERR(svn_repos__parse_hooks_env(&hooks_env, repos->hooks_env_path,
                                     scratch_pool, scratch_pool));

  SVN_ERR(svn_fs_get_access(&access_ctx, repos->fs));
  if (access_ctx)
    SVN_ERR(svn_fs_access_get_username(&username, access_ctx));

  if (! break_lock && ! username)
    return svn_error_create
      (SVN_ERR_FS_NO_USER, ((void*)0),
       _("Cannot unlock, no authenticated username available"));



  for (hi = apr_hash_first(scratch_pool, targets); hi; hi = apr_hash_next(hi))
    {
      const char *path = apr_hash_this_key(hi);
      const char *token = apr_hash_this_val(hi);

      svn_pool_clear(iterpool);

      err = svn_repos__hooks_pre_unlock(repos, hooks_env, path, username, token,
                                        break_lock, iterpool);
      if (err)
        {
          if (!cb_err && lock_callback)
            cb_err = lock_callback(lock_baton, path, ((void*)0), err, iterpool);
          svn_error_clear(err);

          continue;
        }

      svn_hash_sets(pre_targets, path, token);
    }

  if (!apr_hash_count(pre_targets))
    return svn_error_trace(cb_err);

  baton.need_lock = FALSE;
  baton.paths = apr_array_make(scratch_pool, apr_hash_count(pre_targets),
                               sizeof(const char *));
  baton.lock_callback = lock_callback;
  baton.lock_baton = lock_baton;
  baton.cb_err = cb_err;
  baton.pool = scratch_pool;

  err = svn_fs_unlock_many(repos->fs, pre_targets, break_lock,
                           lock_many_cb, &baton, result_pool, iterpool);


  if (baton.paths->nelts)
    {
      svn_error_t *perr = svn_repos__hooks_post_unlock(repos, hooks_env,
                                                       baton.paths,
                                                       username, iterpool);
      if (perr)
        {
          perr = svn_error_create(SVN_ERR_REPOS_POST_UNLOCK_HOOK_FAILED, perr,
                           _("Unlock succeeded, but post-unlock hook failed"));
          err = svn_error_compose_create(err, perr);
        }
    }

  svn_pool_destroy(iterpool);

  if (err && cb_err)
    svn_error_compose(err, cb_err);
  else if (!err)
    err = cb_err;

  return svn_error_trace(err);
}
