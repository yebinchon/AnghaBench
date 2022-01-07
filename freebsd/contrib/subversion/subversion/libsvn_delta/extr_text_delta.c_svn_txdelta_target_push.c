
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_txdelta_window_handler_t ;
typedef int svn_stream_t ;
struct tpush_baton {scalar_t__ target_len; int source_done; scalar_t__ source_len; scalar_t__ source_offset; void* buf; int * pool; void* whb; int wh; int * source; } ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_DELTA_WINDOW_SIZE ;
 void* apr_palloc (int *,int) ;
 int * svn_stream_create (struct tpush_baton*,int *) ;
 int svn_stream_set_close (int *,int ) ;
 int svn_stream_set_write (int *,int ) ;
 int tpush_close_handler ;
 int tpush_write_handler ;

svn_stream_t *
svn_txdelta_target_push(svn_txdelta_window_handler_t handler,
                        void *handler_baton, svn_stream_t *source,
                        apr_pool_t *pool)
{
  struct tpush_baton *tb;
  svn_stream_t *stream;


  tb = apr_palloc(pool, sizeof(*tb));
  tb->source = source;
  tb->wh = handler;
  tb->whb = handler_baton;
  tb->pool = pool;
  tb->buf = apr_palloc(pool, 2 * SVN_DELTA_WINDOW_SIZE);
  tb->source_offset = 0;
  tb->source_len = 0;
  tb->source_done = FALSE;
  tb->target_len = 0;


  stream = svn_stream_create(tb, pool);
  svn_stream_set_write(stream, tpush_write_handler);
  svn_stream_set_close(stream, tpush_close_handler);
  return stream;
}
