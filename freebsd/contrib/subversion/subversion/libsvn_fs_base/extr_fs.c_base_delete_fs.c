
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int svn_fs_bdb__remove (char const*,int *) ;
 int * svn_io_remove_dir2 (char const*,int ,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
base_delete_fs(const char *path,
               apr_pool_t *pool)
{


  SVN_ERR(svn_fs_bdb__remove(path, pool));


  return svn_io_remove_dir2(path, FALSE, ((void*)0), ((void*)0), pool);
}
