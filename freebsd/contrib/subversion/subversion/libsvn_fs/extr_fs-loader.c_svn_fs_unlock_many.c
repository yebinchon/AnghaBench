
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_fs_lock_callback_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_5__ {int (* unlock ) (TYPE_2__*,int *,int ,int ,void*,int *,int *) ;} ;


 int stub1 (TYPE_2__*,int *,int ,int ,void*,int *,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_fs_unlock_many(svn_fs_t *fs,
                   apr_hash_t *targets,
                   svn_boolean_t break_lock,
                   svn_fs_lock_callback_t lock_callback,
                   void *lock_baton,
                   apr_pool_t *result_pool,
                   apr_pool_t *scratch_pool)
{
  return svn_error_trace(fs->vtable->unlock(fs, targets, break_lock,
                                            lock_callback, lock_baton,
                                            result_pool, scratch_pool));
}
