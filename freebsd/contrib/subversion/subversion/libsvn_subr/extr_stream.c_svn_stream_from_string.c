
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int svn_stream_t ;
struct string_stream_baton {scalar_t__ amt_read; int const* str; } ;
typedef int apr_pool_t ;


 struct string_stream_baton* apr_palloc (int *,int) ;
 int data_available_handler_string ;
 int mark_handler_string ;
 int read_handler_string ;
 int readline_handler_string ;
 int seek_handler_string ;
 int skip_handler_string ;
 int * svn_stream_create (struct string_stream_baton*,int *) ;
 int * svn_stream_empty (int *) ;
 int svn_stream_set_data_available (int *,int ) ;
 int svn_stream_set_mark (int *,int ) ;
 int svn_stream_set_read2 (int *,int ,int ) ;
 int svn_stream_set_readline (int *,int ) ;
 int svn_stream_set_seek (int *,int ) ;
 int svn_stream_set_skip (int *,int ) ;

svn_stream_t *
svn_stream_from_string(const svn_string_t *str,
                       apr_pool_t *pool)
{
  svn_stream_t *stream;
  struct string_stream_baton *baton;

  if (! str)
    return svn_stream_empty(pool);

  baton = apr_palloc(pool, sizeof(*baton));
  baton->str = str;
  baton->amt_read = 0;
  stream = svn_stream_create(baton, pool);
  svn_stream_set_read2(stream, read_handler_string, read_handler_string);
  svn_stream_set_mark(stream, mark_handler_string);
  svn_stream_set_seek(stream, seek_handler_string);
  svn_stream_set_skip(stream, skip_handler_string);
  svn_stream_set_data_available(stream, data_available_handler_string);
  svn_stream_set_readline(stream, readline_handler_string);
  return stream;
}
