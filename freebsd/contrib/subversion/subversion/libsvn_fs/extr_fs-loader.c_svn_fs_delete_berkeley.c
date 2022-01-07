
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * svn_error_trace (int ) ;
 int svn_fs_delete_fs (char const*,int *) ;

svn_error_t *
svn_fs_delete_berkeley(const char *path, apr_pool_t *pool)
{
  return svn_error_trace(svn_fs_delete_fs(path, pool));
}
