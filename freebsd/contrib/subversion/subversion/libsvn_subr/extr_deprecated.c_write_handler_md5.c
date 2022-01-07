
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct md5_stream_baton {int proxy; } ;
typedef int apr_size_t ;


 int * svn_error_trace (int ) ;
 int svn_stream_write (int ,char const*,int *) ;

__attribute__((used)) static svn_error_t *
write_handler_md5(void *baton, const char *buffer, apr_size_t *len)
{
  struct md5_stream_baton *btn = baton;
  return svn_error_trace(svn_stream_write(btn->proxy, buffer, len));
}
