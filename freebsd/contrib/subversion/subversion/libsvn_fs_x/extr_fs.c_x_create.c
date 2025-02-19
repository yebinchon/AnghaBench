
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_mutex__t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_MUTEX__WITH_LOCK (int *,int ) ;
 int * SVN_NO_ERROR ;
 int initialize_fs_struct (int *) ;
 int svn_fs__check_fs (int *,int ) ;
 int svn_fs_x__create (int *,char const*,int *) ;
 int svn_fs_x__initialize_caches (int *,int *) ;
 int x_serialized_init (int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
x_create(svn_fs_t *fs,
         const char *path,
         svn_mutex__t *common_pool_lock,
         apr_pool_t *scratch_pool,
         apr_pool_t *common_pool)
{
  SVN_ERR(svn_fs__check_fs(fs, FALSE));

  SVN_ERR(initialize_fs_struct(fs));

  SVN_ERR(svn_fs_x__create(fs, path, scratch_pool));

  SVN_ERR(svn_fs_x__initialize_caches(fs, scratch_pool));
  SVN_MUTEX__WITH_LOCK(common_pool_lock,
                       x_serialized_init(fs, common_pool, scratch_pool));

  return SVN_NO_ERROR;
}
