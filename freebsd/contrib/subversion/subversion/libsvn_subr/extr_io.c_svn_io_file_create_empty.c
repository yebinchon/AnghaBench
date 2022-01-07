
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * svn_error_trace (int ) ;
 int svn_io_file_create_bytes (char const*,int *,int ,int *) ;

svn_error_t *
svn_io_file_create_empty(const char *file,
                         apr_pool_t *scratch_pool)
{
  return svn_error_trace(svn_io_file_create_bytes(file, ((void*)0), 0,
                                                  scratch_pool));
}
