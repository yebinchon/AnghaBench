
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_t ;
typedef int * (* svn_fs_lock_callback_t ) (void*,char const*,int *,int *,int *) ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct unlock_args {char const* token; int break_lock; int path; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 char* apr_hash_this_val (int *) ;
 int svn_error_clear (int *) ;
 int * svn_error_trace (int *) ;
 int svn_fs__canonicalize_abspath (char const*,int *) ;
 int svn_fs__check_fs (int *,int ) ;
 int * svn_fs_base__retry_txn (int *,int ,struct unlock_args*,int ,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int txn_body_unlock ;

svn_error_t *
svn_fs_base__unlock(svn_fs_t *fs,
                    apr_hash_t *targets,
                    svn_boolean_t break_lock,
                    svn_fs_lock_callback_t lock_callback,
                    void *lock_baton,
                    apr_pool_t *result_pool,
                    apr_pool_t *scratch_pool)
{
  apr_hash_index_t *hi;
  svn_error_t *cb_err = SVN_NO_ERROR;
  apr_pool_t *iterpool = svn_pool_create(scratch_pool);

  SVN_ERR(svn_fs__check_fs(fs, TRUE));

  for (hi = apr_hash_first(scratch_pool, targets); hi; hi = apr_hash_next(hi))
    {
      struct unlock_args args;
      const char *path = apr_hash_this_key(hi);
      const char *token = apr_hash_this_val(hi);
      svn_error_t *err;

      svn_pool_clear(iterpool);
      args.path = svn_fs__canonicalize_abspath(path, result_pool);
      args.token = token;
      args.break_lock = break_lock;

      err = svn_fs_base__retry_txn(fs, txn_body_unlock, &args, TRUE,
                                   iterpool);
      if (!cb_err && lock_callback)
        cb_err = lock_callback(lock_baton, path, ((void*)0), err, iterpool);
      svn_error_clear(err);
    }
  svn_pool_destroy(iterpool);

  return svn_error_trace(cb_err);
}
