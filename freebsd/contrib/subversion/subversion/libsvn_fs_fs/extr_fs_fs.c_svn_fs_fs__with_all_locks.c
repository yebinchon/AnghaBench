
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int with_lock_baton_t ;
struct TYPE_5__ {TYPE_2__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_6__ {scalar_t__ format; } ;
typedef TYPE_2__ fs_fs_data_t ;
typedef int apr_pool_t ;


 scalar_t__ SVN_FS_FS__MIN_PACK_LOCK_FORMAT ;
 scalar_t__ SVN_FS_FS__MIN_TXN_CURRENT_FORMAT ;
 int * chain_lock_baton (int ,int *) ;
 int * create_lock_baton (TYPE_1__*,int ,int * (*) (void*,int *),void*,int *) ;
 int pack_lock ;
 int * svn_error_trace (int ) ;
 int txn_lock ;
 int with_lock (int *,int *) ;
 int write_lock ;

svn_error_t *
svn_fs_fs__with_all_locks(svn_fs_t *fs,
                          svn_error_t *(*body)(void *baton,
                                               apr_pool_t *pool),
                          void *baton,
                          apr_pool_t *pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;




  with_lock_baton_t *lock_baton
    = create_lock_baton(fs, write_lock, body, baton, pool);

  if (ffd->format >= SVN_FS_FS__MIN_PACK_LOCK_FORMAT)
    lock_baton = chain_lock_baton(pack_lock, lock_baton);

  if (ffd->format >= SVN_FS_FS__MIN_TXN_CURRENT_FORMAT)
    lock_baton = chain_lock_baton(txn_lock, lock_baton);

  return svn_error_trace(with_lock(lock_baton, pool));
}
