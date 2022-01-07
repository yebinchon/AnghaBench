
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_boolean_t ;
struct encode_baton {int scratch_pool; int break_lines; scalar_t__ linelen; scalar_t__ buflen; int * output; } ;
typedef int apr_pool_t ;


 struct encode_baton* apr_palloc (int *,int) ;
 int encode_data ;
 int finish_encoding_data ;
 int svn_pool_create (int *) ;
 int * svn_stream_create (struct encode_baton*,int *) ;
 int svn_stream_set_close (int *,int ) ;
 int svn_stream_set_write (int *,int ) ;

svn_stream_t *
svn_base64_encode2(svn_stream_t *output,
                   svn_boolean_t break_lines,
                   apr_pool_t *pool)
{
  struct encode_baton *eb = apr_palloc(pool, sizeof(*eb));
  svn_stream_t *stream;

  eb->output = output;
  eb->buflen = 0;
  eb->linelen = 0;
  eb->break_lines = break_lines;
  eb->scratch_pool = svn_pool_create(pool);
  stream = svn_stream_create(eb, pool);
  svn_stream_set_write(stream, encode_data);
  svn_stream_set_close(stream, finish_encoding_data);
  return stream;
}
