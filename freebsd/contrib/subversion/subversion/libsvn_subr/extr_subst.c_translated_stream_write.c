
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct translated_stream_baton {int iterpool; int out_baton; int stream; int written; } ;
typedef int apr_size_t ;


 int TRUE ;
 int svn_pool_clear (int ) ;
 int * translate_chunk (int ,int ,char const*,int ,int ) ;

__attribute__((used)) static svn_error_t *
translated_stream_write(void *baton,
                        const char *buffer,
                        apr_size_t *len)
{
  struct translated_stream_baton *b = baton;
  svn_pool_clear(b->iterpool);

  b->written = TRUE;
  return translate_chunk(b->stream, b->out_baton, buffer, *len, b->iterpool);
}
