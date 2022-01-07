
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int strlen (char const*) ;
 int * svn_error_trace (int ) ;
 int svn_io_file_create_bytes (char const*,char const*,int ,int *) ;

svn_error_t *
svn_io_file_create(const char *file,
                   const char *contents,
                   apr_pool_t *pool)
{
  return svn_error_trace(svn_io_file_create_bytes(file, contents,
                                                  contents ? strlen(contents)
                                                           : 0,
                                                  pool));
}
