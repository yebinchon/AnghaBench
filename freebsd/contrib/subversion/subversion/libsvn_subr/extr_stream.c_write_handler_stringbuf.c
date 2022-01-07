
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct stringbuf_stream_baton {int str; } ;
typedef int apr_size_t ;


 int * SVN_NO_ERROR ;
 int svn_stringbuf_appendbytes (int ,char const*,int ) ;

__attribute__((used)) static svn_error_t *
write_handler_stringbuf(void *baton, const char *data, apr_size_t *len)
{
  struct stringbuf_stream_baton *btn = baton;

  svn_stringbuf_appendbytes(btn->str, data, *len);
  return SVN_NO_ERROR;
}
