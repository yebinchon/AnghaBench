
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_ra_session_t ;
typedef int svn_ra_lock_callback_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;
struct TYPE_5__ {int * (* unlock ) (TYPE_2__*,int *,int ,int ,void*,int *) ;} ;


 int SVN_ERR_ASSERT (int ) ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 int * stub1 (TYPE_2__*,int *,int ,int ,void*,int *) ;
 int svn_relpath_is_canonical (char const*) ;

svn_error_t *svn_ra_unlock(svn_ra_session_t *session,
                           apr_hash_t *path_tokens,
                           svn_boolean_t break_lock,
                           svn_ra_lock_callback_t lock_func,
                           void *lock_baton,
                           apr_pool_t *pool)
{
  apr_hash_index_t *hi;

  for (hi = apr_hash_first(pool, path_tokens); hi; hi = apr_hash_next(hi))
    {
      const char *path = apr_hash_this_key(hi);

      SVN_ERR_ASSERT(svn_relpath_is_canonical(path));
    }

  return session->vtable->unlock(session, path_tokens, break_lock,
                                 lock_func, lock_baton, pool);
}
