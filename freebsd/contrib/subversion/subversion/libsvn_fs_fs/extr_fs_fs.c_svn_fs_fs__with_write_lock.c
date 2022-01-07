
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int create_lock_baton (int *,int ,int * (*) (void*,int *),void*,int *) ;
 int * svn_error_trace (int ) ;
 int with_lock (int ,int *) ;
 int write_lock ;

svn_error_t *
svn_fs_fs__with_write_lock(svn_fs_t *fs,
                           svn_error_t *(*body)(void *baton,
                                                apr_pool_t *pool),
                           void *baton,
                           apr_pool_t *pool)
{
  return svn_error_trace(
           with_lock(create_lock_baton(fs, write_lock, body, baton, pool),
                     pool));
}
