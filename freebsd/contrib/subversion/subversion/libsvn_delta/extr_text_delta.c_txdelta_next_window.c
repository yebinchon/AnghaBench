
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_txdelta_window_t ;
typedef int svn_error_t ;
struct txdelta_baton {int more_source; scalar_t__ buf; scalar_t__ pos; int * context; int more; int result_pool; int checksum; int target; int source; } ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;


 int FALSE ;
 scalar_t__ SVN_DELTA_WINDOW_SIZE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * compute_window (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int *) ;
 int svn_checksum_final (int *,int *,int ) ;
 int svn_checksum_update (int *,scalar_t__,scalar_t__) ;
 int svn_stream_read_full (int ,scalar_t__,scalar_t__*) ;

__attribute__((used)) static svn_error_t *
txdelta_next_window(svn_txdelta_window_t **window,
                    void *baton,
                    apr_pool_t *pool)
{
  struct txdelta_baton *b = baton;
  apr_size_t source_len = SVN_DELTA_WINDOW_SIZE;
  apr_size_t target_len = SVN_DELTA_WINDOW_SIZE;


  if (b->more_source)
    {
      SVN_ERR(svn_stream_read_full(b->source, b->buf, &source_len));
      b->more_source = (source_len == SVN_DELTA_WINDOW_SIZE);
    }
  else
    source_len = 0;


  SVN_ERR(svn_stream_read_full(b->target, b->buf + source_len, &target_len));
  b->pos += source_len;

  if (target_len == 0)
    {

      if (b->context != ((void*)0))
        SVN_ERR(svn_checksum_final(&b->checksum, b->context, b->result_pool));

      *window = ((void*)0);
      b->more = FALSE;
      return SVN_NO_ERROR;
    }
  else if (b->context != ((void*)0))
    SVN_ERR(svn_checksum_update(b->context, b->buf + source_len, target_len));

  *window = compute_window(b->buf, source_len, target_len,
                           b->pos - source_len, pool);


  return SVN_NO_ERROR;
}
