
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ read_pos; TYPE_2__* window_buffer; scalar_t__ hit_eof; int handler_baton; int (* handler ) (int *,int ) ;int scratch_pool; int txstream; } ;
typedef TYPE_1__ svndiff_stream_baton_t ;
typedef int svn_txdelta_window_t ;
typedef int svn_error_t ;
typedef scalar_t__ apr_size_t ;
struct TYPE_4__ {scalar_t__ len; scalar_t__ data; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int memcpy (char*,scalar_t__,scalar_t__) ;
 int stub1 (int *,int ) ;
 int svn_pool_clear (int ) ;
 int svn_stringbuf_setempty (TYPE_2__*) ;
 int svn_txdelta_next_window (int **,int ,int ) ;

__attribute__((used)) static svn_error_t *
svndiff_stream_read_fn(void *baton, char *buffer, apr_size_t *len)
{
  svndiff_stream_baton_t *b = baton;
  apr_size_t left = *len;
  apr_size_t read = 0;

  while (left)
    {
      apr_size_t chunk_size;

      if (b->read_pos == b->window_buffer->len && !b->hit_eof)
        {
          svn_txdelta_window_t *window;

          svn_pool_clear(b->scratch_pool);
          svn_stringbuf_setempty(b->window_buffer);
          SVN_ERR(svn_txdelta_next_window(&window, b->txstream,
                                          b->scratch_pool));
          SVN_ERR(b->handler(window, b->handler_baton));
          b->read_pos = 0;

          if (!window)
            b->hit_eof = TRUE;
        }

      if (left > b->window_buffer->len - b->read_pos)
        chunk_size = b->window_buffer->len - b->read_pos;
      else
        chunk_size = left;

      if (!chunk_size)
          break;

      memcpy(buffer, b->window_buffer->data + b->read_pos, chunk_size);
      b->read_pos += chunk_size;
      buffer += chunk_size;
      read += chunk_size;
      left -= chunk_size;
    }

  *len = read;
  return SVN_NO_ERROR;
}
