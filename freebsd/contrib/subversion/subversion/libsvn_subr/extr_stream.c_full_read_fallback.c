
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef scalar_t__ apr_size_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_stream_read2 (int *,char*,scalar_t__*) ;

__attribute__((used)) static svn_error_t *
full_read_fallback(svn_stream_t *stream, char *buffer, apr_size_t *len)
{
  apr_size_t remaining = *len;
  while (remaining > 0)
    {
      apr_size_t length = remaining;
      SVN_ERR(svn_stream_read2(stream, buffer, &length));

      if (length == 0)
        {
          *len -= remaining;
          return SVN_NO_ERROR;
        }

      remaining -= length;
      buffer += length;
    }

  return SVN_NO_ERROR;
}
