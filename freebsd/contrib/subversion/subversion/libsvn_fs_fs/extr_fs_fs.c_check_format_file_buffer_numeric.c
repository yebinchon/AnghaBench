
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;


 int * svn_fs_fs__check_file_buffer_numeric (char const*,int ,char const*,char*,int *) ;

__attribute__((used)) static svn_error_t *
check_format_file_buffer_numeric(const char *buf, apr_off_t offset,
                                 const char *path, apr_pool_t *pool)
{
  return svn_fs_fs__check_file_buffer_numeric(buf, offset, path, "Format",
                                              pool);
}
