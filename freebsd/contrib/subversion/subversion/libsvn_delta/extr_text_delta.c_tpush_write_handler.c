
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_txdelta_window_t ;
typedef int svn_error_t ;
struct tpush_baton {scalar_t__ source_len; scalar_t__ buf; scalar_t__ target_len; int source_offset; int whb; int (* wh ) (int *,int ) ;scalar_t__ source_done; int source; int pool; } ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;


 scalar_t__ SVN_DELTA_WINDOW_SIZE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int * compute_window (scalar_t__,scalar_t__,scalar_t__,int ,int *) ;
 int memcpy (scalar_t__,char const*,scalar_t__) ;
 int stub1 (int *,int ) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int ) ;
 int svn_pool_destroy (int *) ;
 int svn_stream_read_full (int ,scalar_t__,scalar_t__*) ;

__attribute__((used)) static svn_error_t *
tpush_write_handler(void *baton, const char *data, apr_size_t *len)
{
  struct tpush_baton *tb = baton;
  apr_size_t chunk_len, data_len = *len;
  apr_pool_t *pool = svn_pool_create(tb->pool);
  svn_txdelta_window_t *window;

  while (data_len > 0)
    {
      svn_pool_clear(pool);


      if (tb->source_len == 0 && !tb->source_done)
        {
          tb->source_len = SVN_DELTA_WINDOW_SIZE;
          SVN_ERR(svn_stream_read_full(tb->source, tb->buf, &tb->source_len));
          if (tb->source_len < SVN_DELTA_WINDOW_SIZE)
            tb->source_done = TRUE;
        }


      chunk_len = SVN_DELTA_WINDOW_SIZE - tb->target_len;
      if (chunk_len > data_len)
        chunk_len = data_len;
      memcpy(tb->buf + tb->source_len + tb->target_len, data, chunk_len);
      data += chunk_len;
      data_len -= chunk_len;
      tb->target_len += chunk_len;


      if (tb->target_len == SVN_DELTA_WINDOW_SIZE)
        {
          window = compute_window(tb->buf, tb->source_len, tb->target_len,
                                  tb->source_offset, pool);
          SVN_ERR(tb->wh(window, tb->whb));
          tb->source_offset += tb->source_len;
          tb->source_len = 0;
          tb->target_len = 0;
        }
    }

  svn_pool_destroy(pool);
  return SVN_NO_ERROR;
}
