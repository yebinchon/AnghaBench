
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_mutex__t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_MUTEX__WITH_LOCK (int *,int ) ;
 int * SVN_NO_ERROR ;
 int x_serialized_init (int *,int *,int *) ;

svn_error_t *
svn_fs_x__initialize_shared_data(svn_fs_t *fs,
                                 svn_mutex__t *common_pool_lock,
                                 apr_pool_t *scratch_pool,
                                 apr_pool_t *common_pool)
{
  SVN_MUTEX__WITH_LOCK(common_pool_lock,
                       x_serialized_init(fs, common_pool, scratch_pool));

  return SVN_NO_ERROR;
}
