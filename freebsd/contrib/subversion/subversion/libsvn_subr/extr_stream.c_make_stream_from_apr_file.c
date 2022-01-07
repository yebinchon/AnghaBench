
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int * file; } ;
typedef TYPE_1__ svn_stream_t ;
typedef scalar_t__ svn_boolean_t ;
struct baton_apr {scalar_t__ truncate_on_seek; int * pool; int * file; } ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 struct baton_apr* apr_palloc (int *,int) ;
 int close_handler_apr ;
 int data_available_handler_apr ;
 int mark_handler_apr ;
 int read_full_handler_apr ;
 int read_handler_apr ;
 int readline_handler_apr ;
 int seek_handler_apr ;
 int skip_handler_apr ;
 TYPE_1__* svn_stream_create (struct baton_apr*,int *) ;
 TYPE_1__* svn_stream_empty (int *) ;
 int svn_stream_set_close (TYPE_1__*,int ) ;
 int svn_stream_set_data_available (TYPE_1__*,int ) ;
 int svn_stream_set_mark (TYPE_1__*,int ) ;
 int svn_stream_set_read2 (TYPE_1__*,int ,int ) ;
 int svn_stream_set_readline (TYPE_1__*,int ) ;
 int svn_stream_set_seek (TYPE_1__*,int ) ;
 int svn_stream_set_skip (TYPE_1__*,int ) ;
 int svn_stream_set_write (TYPE_1__*,int ) ;
 int write_handler_apr ;

__attribute__((used)) static svn_stream_t *
make_stream_from_apr_file(apr_file_t *file,
                          svn_boolean_t disown,
                          svn_boolean_t supports_seek,
                          svn_boolean_t truncate_on_seek,
                          apr_pool_t *pool)
{
  struct baton_apr *baton;
  svn_stream_t *stream;

  if (file == ((void*)0))
    return svn_stream_empty(pool);

  baton = apr_palloc(pool, sizeof(*baton));
  baton->file = file;
  baton->pool = pool;
  baton->truncate_on_seek = truncate_on_seek;
  stream = svn_stream_create(baton, pool);
  svn_stream_set_read2(stream, read_handler_apr, read_full_handler_apr);
  svn_stream_set_write(stream, write_handler_apr);

  if (supports_seek)
    {
      svn_stream_set_skip(stream, skip_handler_apr);
      svn_stream_set_mark(stream, mark_handler_apr);
      svn_stream_set_seek(stream, seek_handler_apr);
      svn_stream_set_readline(stream, readline_handler_apr);
    }

  svn_stream_set_data_available(stream, data_available_handler_apr);
  stream->file = file;

  if (! disown)
    svn_stream_set_close(stream, close_handler_apr);

  return stream;
}
