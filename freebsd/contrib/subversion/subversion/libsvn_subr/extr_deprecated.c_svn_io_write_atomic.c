
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int TRUE ;
 int * svn_error_trace (int ) ;
 int svn_io_write_atomic2 (char const*,void const*,int ,char const*,int ,int *) ;

svn_error_t *
svn_io_write_atomic(const char *final_path,
                    const void *buf,
                    apr_size_t nbytes,
                    const char *copy_perms_path,
                    apr_pool_t *scratch_pool)
{
  return svn_error_trace(svn_io_write_atomic2(final_path, buf, nbytes,
                                              copy_perms_path, TRUE,
                                              scratch_pool));
}
