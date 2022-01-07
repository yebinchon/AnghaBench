
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_txdelta_window_handler_t ;
typedef int svn_stream_t ;
typedef int svn_boolean_t ;
struct decode_baton {scalar_t__ window_header_len; int error_on_early_close; scalar_t__ header_bytes; scalar_t__ last_sview_len; scalar_t__ last_sview_offset; int * pool; int buffer; void* subpool; void* consumer_baton; scalar_t__ consumer_func; } ;
typedef int apr_pool_t ;


 struct decode_baton* apr_palloc (int *,int) ;
 int close_handler ;
 int noop_write_handler ;
 scalar_t__ svn_delta_noop_window_handler ;
 void* svn_pool_create (int *) ;
 int * svn_stream_create (struct decode_baton*,int *) ;
 int svn_stream_set_close (int *,int ) ;
 int svn_stream_set_write (int *,int ) ;
 int svn_stringbuf_create_empty (int *) ;
 int write_handler ;

svn_stream_t *
svn_txdelta_parse_svndiff(svn_txdelta_window_handler_t handler,
                          void *handler_baton,
                          svn_boolean_t error_on_early_close,
                          apr_pool_t *pool)
{
  svn_stream_t *stream;

  if (handler != svn_delta_noop_window_handler)
    {
      apr_pool_t *subpool = svn_pool_create(pool);
      struct decode_baton *db = apr_palloc(pool, sizeof(*db));

      db->consumer_func = handler;
      db->consumer_baton = handler_baton;
      db->pool = subpool;
      db->subpool = svn_pool_create(subpool);
      db->buffer = svn_stringbuf_create_empty(db->pool);
      db->last_sview_offset = 0;
      db->last_sview_len = 0;
      db->header_bytes = 0;
      db->error_on_early_close = error_on_early_close;
      db->window_header_len = 0;
      stream = svn_stream_create(db, pool);

      svn_stream_set_write(stream, write_handler);
      svn_stream_set_close(stream, close_handler);
    }
  else
    {


      stream = svn_stream_create(((void*)0), pool);
      svn_stream_set_write(stream, noop_write_handler);
    }
  return stream;
}
