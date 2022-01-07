
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int svn_error_t ;
typedef int bdb_env_baton_t ;
typedef int apr_pool_t ;


 int SVN_MUTEX__WITH_LOCK (int ,int ) ;
 int * SVN_NO_ERROR ;
 int bdb_cache_lock ;
 int svn_fs_bdb__open_internal (int **,char const*,int ,int,int *) ;

svn_error_t *
svn_fs_bdb__open(bdb_env_baton_t **bdb_batonp, const char *path,
                 u_int32_t flags, int mode,
                 apr_pool_t *pool)
{
  SVN_MUTEX__WITH_LOCK(bdb_cache_lock,
                       svn_fs_bdb__open_internal(bdb_batonp,
                                                 path,
                                                 flags,
                                                 mode,
                                                 pool));

  return SVN_NO_ERROR;
}
