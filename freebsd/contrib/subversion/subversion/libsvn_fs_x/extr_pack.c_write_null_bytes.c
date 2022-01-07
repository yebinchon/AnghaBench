
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_off_t ;
typedef int apr_file_t ;


 scalar_t__ MIN (scalar_t__,int) ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_io_file_write_full (int *,char const*,scalar_t__,int *,int *) ;

__attribute__((used)) static svn_error_t *
write_null_bytes(apr_file_t *dest,
                 apr_off_t size,
                 apr_pool_t *scratch_pool)
{

  enum { BUFFER_SIZE = 1024 };
  static const char buffer[BUFFER_SIZE] = { 0 };


  while (size)
    {
      apr_size_t to_write = MIN(size, BUFFER_SIZE);
      SVN_ERR(svn_io_file_write_full(dest, buffer, to_write, ((void*)0),
                                     scratch_pool));
      size -= to_write;
    }

  return SVN_NO_ERROR;
}
