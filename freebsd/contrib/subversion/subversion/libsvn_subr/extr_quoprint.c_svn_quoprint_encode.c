
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
struct encode_baton {int * pool; scalar_t__ linelen; int * output; } ;
typedef int apr_pool_t ;


 struct encode_baton* apr_palloc (int *,int) ;
 int encode_data ;
 int finish_encoding_data ;
 int * svn_pool_create (int *) ;
 int * svn_stream_create (struct encode_baton*,int *) ;
 int svn_stream_set_close (int *,int ) ;
 int svn_stream_set_write (int *,int ) ;

svn_stream_t *
svn_quoprint_encode(svn_stream_t *output, apr_pool_t *pool)
{
  apr_pool_t *subpool = svn_pool_create(pool);
  struct encode_baton *eb = apr_palloc(subpool, sizeof(*eb));
  svn_stream_t *stream;

  eb->output = output;
  eb->linelen = 0;
  eb->pool = subpool;
  stream = svn_stream_create(eb, pool);
  svn_stream_set_write(stream, encode_data);
  svn_stream_set_close(stream, finish_encoding_data);
  return stream;
}
