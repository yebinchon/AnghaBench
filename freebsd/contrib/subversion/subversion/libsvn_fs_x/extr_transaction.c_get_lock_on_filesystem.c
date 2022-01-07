
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * svn_error_trace (int ) ;
 int svn_io__file_lock_autocreate (char const*,int *) ;

__attribute__((used)) static svn_error_t *
get_lock_on_filesystem(const char *lock_filename,
                       apr_pool_t *result_pool)
{
  return svn_error_trace(svn_io__file_lock_autocreate(lock_filename,
                                                      result_pool));
}
