
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_filesize_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 char* apr_pcalloc (int *,int) ;
 int stream_malformed () ;
 int stream_ran_dry () ;
 int * svn_error_trace (int ) ;
 int svn_stream_read_full (int *,char*,int*) ;

__attribute__((used)) static svn_error_t *
read_key_or_val(char **pbuf,
                svn_filesize_t *actual_length,
                svn_stream_t *stream,
                apr_size_t len,
                apr_pool_t *pool)
{
  char *buf = apr_pcalloc(pool, len + 1);
  apr_size_t numread;
  char c;

  numread = len;
  SVN_ERR(svn_stream_read_full(stream, buf, &numread));
  *actual_length += numread;
  if (numread != len)
    return svn_error_trace(stream_ran_dry());
  buf[len] = '\0';


  numread = 1;
  SVN_ERR(svn_stream_read_full(stream, &c, &numread));
  *actual_length += numread;
  if (numread != 1)
    return svn_error_trace(stream_ran_dry());
  if (c != '\n')
    return svn_error_trace(stream_malformed());

  *pbuf = buf;
  return SVN_NO_ERROR;
}
