
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_lock_t ;
struct TYPE_4__ {int path; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int (* svn_fs_get_locks_callback_t ) (void*,int *,int *) ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int apr_hash_count (int *) ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 char const* digest_path_from_digest (int ,char const*,int *) ;
 scalar_t__ lock_expired (int *) ;
 int read_digest_file (int **,int **,int ,char const*,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int unlock_single (TYPE_1__*,int *,int *) ;

__attribute__((used)) static svn_error_t *
walk_locks(svn_fs_t *fs,
           const char *digest_path,
           svn_fs_get_locks_callback_t get_locks_func,
           void *get_locks_baton,
           svn_boolean_t have_write_lock,
           apr_pool_t *pool)
{
  apr_hash_index_t *hi;
  apr_hash_t *children;
  apr_pool_t *subpool;
  svn_lock_t *lock;


  SVN_ERR(read_digest_file(&children, &lock, fs->path, digest_path, pool));

  if (lock && lock_expired(lock))
    {


      if (have_write_lock)
        SVN_ERR(unlock_single(fs, lock, pool));
    }
  else if (lock)
    {
      SVN_ERR(get_locks_func(get_locks_baton, lock, pool));
    }


  if (! apr_hash_count(children))
    return SVN_NO_ERROR;
  subpool = svn_pool_create(pool);
  for (hi = apr_hash_first(pool, children); hi; hi = apr_hash_next(hi))
    {
      const char *digest = apr_hash_this_key(hi);
      svn_pool_clear(subpool);

      SVN_ERR(read_digest_file
              (((void*)0), &lock, fs->path,
               digest_path_from_digest(fs->path, digest, subpool), subpool));

      if (lock && lock_expired(lock))
        {


          if (have_write_lock)
            SVN_ERR(unlock_single(fs, lock, pool));
        }
      else if (lock)
        {
          SVN_ERR(get_locks_func(get_locks_baton, lock, pool));
        }
    }
  svn_pool_destroy(subpool);
  return SVN_NO_ERROR;
}
