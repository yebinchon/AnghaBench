
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct special_stream_baton {int write_stream; } ;
typedef int apr_size_t ;


 int * svn_stream_write (int ,char const*,int *) ;

__attribute__((used)) static svn_error_t *
write_handler_special(void *baton, const char *buffer, apr_size_t *len)
{
  struct special_stream_baton *btn = baton;

  return svn_stream_write(btn->write_stream, buffer, len);
}
