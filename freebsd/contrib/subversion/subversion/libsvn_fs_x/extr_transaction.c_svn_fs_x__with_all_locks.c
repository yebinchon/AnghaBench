
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int with_lock_baton_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * chain_lock_baton (int ,int *) ;
 int * create_lock_baton (int *,int ,int * (*) (void*,int *),void*,int *) ;
 int pack_lock ;
 int * svn_error_trace (int ) ;
 int txn_lock ;
 int with_lock (int *,int *) ;
 int write_lock ;

svn_error_t *
svn_fs_x__with_all_locks(svn_fs_t *fs,
                         svn_error_t *(*body)(void *baton,
                                              apr_pool_t *scratch_pool),
                         void *baton,
                         apr_pool_t *scratch_pool)
{



  with_lock_baton_t *lock_baton
    = create_lock_baton(fs, txn_lock, body, baton, scratch_pool);

  lock_baton = chain_lock_baton(write_lock, lock_baton);
  lock_baton = chain_lock_baton(pack_lock, lock_baton);

  return svn_error_trace(with_lock(lock_baton, scratch_pool));
}
