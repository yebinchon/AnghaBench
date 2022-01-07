
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int TRUE ;
 char* svn_dirent_join (char const*,char const*,int *) ;
 int * svn_error_trace (int ) ;
 int svn_io_copy_file (char const*,char const*,int ,int *) ;

svn_error_t *
svn_io_dir_file_copy(const char *src_path,
                     const char *dest_path,
                     const char *file,
                     apr_pool_t *pool)
{
  const char *file_dest_path = svn_dirent_join(dest_path, file, pool);
  const char *file_src_path = svn_dirent_join(src_path, file, pool);

  return svn_error_trace(
            svn_io_copy_file(file_src_path, file_dest_path, TRUE, pool));
}
