
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef scalar_t__ apr_status_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 scalar_t__ APR_STATUS_IS_EOF (scalar_t__) ;
 scalar_t__ APR_SUCCESS ;
 int SVN__STREAM_CHUNK_SIZE ;
 scalar_t__ apr_file_read (int *,char*,int*) ;
 scalar_t__ apr_file_write_full (int *,char*,int,int *) ;

__attribute__((used)) static apr_status_t
copy_contents(apr_file_t *from_file,
              apr_file_t *to_file,
              apr_pool_t *pool)
{

  while (1)
    {
      char buf[SVN__STREAM_CHUNK_SIZE];
      apr_size_t bytes_this_time = sizeof(buf);
      apr_status_t read_err;
      apr_status_t write_err;


      read_err = apr_file_read(from_file, buf, &bytes_this_time);
      if (read_err && !APR_STATUS_IS_EOF(read_err))
        {
          return read_err;
        }


      write_err = apr_file_write_full(to_file, buf, bytes_this_time, ((void*)0));
      if (write_err)
        {
          return write_err;
        }

      if (read_err && APR_STATUS_IS_EOF(read_err))
        {

          return APR_SUCCESS;
        }
    }

}
