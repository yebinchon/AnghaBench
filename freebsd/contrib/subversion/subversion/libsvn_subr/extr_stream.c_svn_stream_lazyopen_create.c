
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_stream_lazyopen_func_t ;
typedef int svn_boolean_t ;
struct TYPE_4__ {int open_on_close; int * pool; int * real_stream; void* open_baton; int open_func; } ;
typedef TYPE_1__ lazyopen_baton_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_pcalloc (int *,int) ;
 int close_handler_lazyopen ;
 int data_available_handler_lazyopen ;
 int mark_handler_lazyopen ;
 int read_full_handler_lazyopen ;
 int read_handler_lazyopen ;
 int readline_handler_lazyopen ;
 int seek_handler_lazyopen ;
 int skip_handler_lazyopen ;
 int * svn_stream_create (TYPE_1__*,int *) ;
 int svn_stream_set_close (int *,int ) ;
 int svn_stream_set_data_available (int *,int ) ;
 int svn_stream_set_mark (int *,int ) ;
 int svn_stream_set_read2 (int *,int ,int ) ;
 int svn_stream_set_readline (int *,int ) ;
 int svn_stream_set_seek (int *,int ) ;
 int svn_stream_set_skip (int *,int ) ;
 int svn_stream_set_write (int *,int ) ;
 int write_handler_lazyopen ;

svn_stream_t *
svn_stream_lazyopen_create(svn_stream_lazyopen_func_t open_func,
                           void *open_baton,
                           svn_boolean_t open_on_close,
                           apr_pool_t *result_pool)
{
  lazyopen_baton_t *lob = apr_pcalloc(result_pool, sizeof(*lob));
  svn_stream_t *stream;

  lob->open_func = open_func;
  lob->open_baton = open_baton;
  lob->real_stream = ((void*)0);
  lob->pool = result_pool;
  lob->open_on_close = open_on_close;

  stream = svn_stream_create(lob, result_pool);
  svn_stream_set_read2(stream, read_handler_lazyopen,
                       read_full_handler_lazyopen);
  svn_stream_set_skip(stream, skip_handler_lazyopen);
  svn_stream_set_write(stream, write_handler_lazyopen);
  svn_stream_set_close(stream, close_handler_lazyopen);
  svn_stream_set_mark(stream, mark_handler_lazyopen);
  svn_stream_set_seek(stream, seek_handler_lazyopen);
  svn_stream_set_data_available(stream, data_available_handler_lazyopen);
  svn_stream_set_readline(stream, readline_handler_lazyopen);

  return stream;
}
