
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int path; } ;
typedef TYPE_1__ svn_lock_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct get_locks_baton_t {int locks; int authz_read_baton; int head_root; int (* authz_read_func ) (scalar_t__*,int ,int ,int ,int *) ;} ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int * apr_hash_pool_get (int ) ;
 int apr_pstrdup (int *,int ) ;
 int stub1 (scalar_t__*,int ,int ,int ,int *) ;
 int svn_hash_sets (int ,int ,int ) ;
 int svn_lock_dup (TYPE_1__*,int *) ;

__attribute__((used)) static svn_error_t *
get_locks_callback(void *baton,
                   svn_lock_t *lock,
                   apr_pool_t *pool)
{
  struct get_locks_baton_t *b = baton;
  svn_boolean_t readable = TRUE;
  apr_pool_t *hash_pool = apr_hash_pool_get(b->locks);


  if (b->authz_read_func)
    SVN_ERR(b->authz_read_func(&readable, b->head_root, lock->path,
                               b->authz_read_baton, pool));


  if (readable)
    svn_hash_sets(b->locks, apr_pstrdup(hash_pool, lock->path),
                  svn_lock_dup(lock, hash_pool));

  return SVN_NO_ERROR;
}
