
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int handler_baton; int handler; scalar_t__ read_pos; int hit_eof; int window_buffer; int * txstream; int scratch_pool; } ;
typedef TYPE_1__ svndiff_stream_baton_t ;
typedef int svn_txdelta_stream_t ;
typedef int svn_stream_t ;
typedef int apr_pool_t ;


 int FALSE ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int svn_pool_create (int *) ;
 int * svn_stream_create (TYPE_1__*,int *) ;
 int svn_stream_set_read2 (int *,int *,int ) ;
 int svn_stream_set_write (int *,int ) ;
 int svn_stringbuf_create_empty (int *) ;
 int svn_txdelta_to_svndiff3 (int *,int *,int *,int,int,int *) ;
 int svndiff_stream_read_fn ;
 int svndiff_stream_write_fn ;

svn_stream_t *
svn_txdelta_to_svndiff_stream(svn_txdelta_stream_t *txstream,
                              int svndiff_version,
                              int compression_level,
                              apr_pool_t *pool)
{
  svndiff_stream_baton_t *baton;
  svn_stream_t *push_stream;
  svn_stream_t *pull_stream;

  baton = apr_pcalloc(pool, sizeof(*baton));
  baton->scratch_pool = svn_pool_create(pool);
  baton->txstream = txstream;
  baton->window_buffer = svn_stringbuf_create_empty(pool);
  baton->hit_eof = FALSE;
  baton->read_pos = 0;

  push_stream = svn_stream_create(baton, pool);
  svn_stream_set_write(push_stream, svndiff_stream_write_fn);







  svn_txdelta_to_svndiff3(&baton->handler, &baton->handler_baton,
                          push_stream, svndiff_version,
                          compression_level, pool);

  pull_stream = svn_stream_create(baton, pool);
  svn_stream_set_read2(pull_stream, ((void*)0), svndiff_stream_read_fn);

  return pull_stream;
}
