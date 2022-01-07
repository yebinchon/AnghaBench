
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int * svn_io_file_read_full2 (int *,void*,int ,int *,int *,int *) ;

svn_error_t *
svn_io_file_read_full(apr_file_t *file, void *buf,
                      apr_size_t nbytes, apr_size_t *bytes_read,
                      apr_pool_t *pool)
{
  return svn_io_file_read_full2(file, buf, nbytes, bytes_read, ((void*)0), pool);
}
