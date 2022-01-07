
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int * svn_fs_open2 (int **,char const*,int *,int *,int *) ;

svn_error_t *
svn_fs_open(svn_fs_t **fs_p,
            const char *path,
            apr_hash_t *fs_config,
            apr_pool_t *pool)
{
  return svn_fs_open2(fs_p, path, fs_config, pool, pool);
}
