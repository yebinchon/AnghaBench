
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
struct decode_baton {int * pool; scalar_t__ buflen; int * output; } ;
typedef int apr_pool_t ;


 struct decode_baton* apr_palloc (int *,int) ;
 int decode_data ;
 int finish_decoding_data ;
 int * svn_pool_create (int *) ;
 int * svn_stream_create (struct decode_baton*,int *) ;
 int svn_stream_set_close (int *,int ) ;
 int svn_stream_set_write (int *,int ) ;

svn_stream_t *
svn_quoprint_decode(svn_stream_t *output, apr_pool_t *pool)
{
  apr_pool_t *subpool = svn_pool_create(pool);
  struct decode_baton *db = apr_palloc(subpool, sizeof(*db));
  svn_stream_t *stream;

  db->output = output;
  db->buflen = 0;
  db->pool = subpool;
  stream = svn_stream_create(db, pool);
  svn_stream_set_write(stream, decode_data);
  svn_stream_set_close(stream, finish_decoding_data);
  return stream;
}
