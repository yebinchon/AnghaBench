
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int window_buffer; } ;
typedef TYPE_1__ svndiff_stream_baton_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;


 int * SVN_NO_ERROR ;
 int svn_stringbuf_appendbytes (int ,char const*,int ) ;

__attribute__((used)) static svn_error_t *
svndiff_stream_write_fn(void *baton, const char *data, apr_size_t *len)
{
  svndiff_stream_baton_t *b = baton;




  svn_stringbuf_appendbytes(b->window_buffer, data, *len);

  return SVN_NO_ERROR;
}
