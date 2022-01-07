
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_t ;
typedef int apr_pool_t ;


 char const* svn_fs_path (int *,int *) ;

const char *
svn_fs_berkeley_path(svn_fs_t *fs, apr_pool_t *pool)
{
  return svn_fs_path(fs, pool);
}
