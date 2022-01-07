
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int * svn_error_trace (int ) ;
 int svn_io_remove_file2 (char const*,int ,int *) ;

svn_error_t *
svn_io_remove_file(const char *path,
                   apr_pool_t *scratch_pool)
{
  return svn_error_trace(svn_io_remove_file2(path, FALSE, scratch_pool));
}
