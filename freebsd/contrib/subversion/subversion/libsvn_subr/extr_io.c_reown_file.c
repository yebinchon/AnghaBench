
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int TRUE ;
 int svn_dirent_dirname (char const*,int *) ;
 int * svn_error_trace (int ) ;
 int svn_io_copy_file (char const*,char const*,int ,int *) ;
 int svn_io_file_del_none ;
 int svn_io_file_rename2 (char const*,char const*,int ,int *) ;
 int svn_io_open_unique_file3 (int *,char const**,int ,int ,int *,int *) ;
 int svn_io_remove_file2 (char const*,int ,int *) ;

__attribute__((used)) static svn_error_t *
reown_file(const char *path,
           apr_pool_t *pool)
{
  const char *unique_name;

  SVN_ERR(svn_io_open_unique_file3(((void*)0), &unique_name,
                                   svn_dirent_dirname(path, pool),
                                   svn_io_file_del_none, pool, pool));
  SVN_ERR(svn_io_file_rename2(path, unique_name, FALSE, pool));
  SVN_ERR(svn_io_copy_file(unique_name, path, TRUE, pool));
  return svn_error_trace(svn_io_remove_file2(unique_name, FALSE, pool));
}
