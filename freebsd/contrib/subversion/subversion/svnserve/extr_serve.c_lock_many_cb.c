
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_lock_t ;
typedef int svn_error_t ;
struct lock_result_t {int err; int const* lock; } ;
struct lock_many_baton_t {int pool; int results; } ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 struct lock_result_t* apr_palloc (int ,int) ;
 int apr_pstrdup (int ,char const*) ;
 int svn_error_dup (int *) ;
 int svn_hash_sets (int ,int ,struct lock_result_t*) ;

__attribute__((used)) static svn_error_t *
lock_many_cb(void *baton,
             const char *path,
             const svn_lock_t *fs_lock,
             svn_error_t *fs_err,
             apr_pool_t *pool)
{
  struct lock_many_baton_t *b = baton;
  struct lock_result_t *result = apr_palloc(b->pool,
                                            sizeof(struct lock_result_t));

  result->lock = fs_lock;
  result->err = svn_error_dup(fs_err);
  svn_hash_sets(b->results, apr_pstrdup(b->pool, path), result);

  return SVN_NO_ERROR;
}
