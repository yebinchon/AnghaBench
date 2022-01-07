
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;


 int strlen (char const*) ;
 int * svn_error_trace (int ) ;
 int svn_stream_write (int *,char const*,int *) ;

svn_error_t *
svn_stream_puts(svn_stream_t *stream,
                const char *str)
{
  apr_size_t len;
  len = strlen(str);
  return svn_error_trace(svn_stream_write(stream, str, &len));
}
