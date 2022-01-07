
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stringbuf_t ;
typedef int svn_stream_t ;
struct stringbuf_stream_baton {scalar_t__ amt_read; int * str; } ;
typedef int apr_pool_t ;


 struct stringbuf_stream_baton* apr_palloc (int *,int) ;
 int data_available_handler_stringbuf ;
 int mark_handler_stringbuf ;
 int read_handler_stringbuf ;
 int readline_handler_stringbuf ;
 int seek_handler_stringbuf ;
 int skip_handler_stringbuf ;
 int * svn_stream_create (struct stringbuf_stream_baton*,int *) ;
 int * svn_stream_empty (int *) ;
 int svn_stream_set_data_available (int *,int ) ;
 int svn_stream_set_mark (int *,int ) ;
 int svn_stream_set_read2 (int *,int ,int ) ;
 int svn_stream_set_readline (int *,int ) ;
 int svn_stream_set_seek (int *,int ) ;
 int svn_stream_set_skip (int *,int ) ;
 int svn_stream_set_write (int *,int ) ;
 int write_handler_stringbuf ;

svn_stream_t *
svn_stream_from_stringbuf(svn_stringbuf_t *str,
                          apr_pool_t *pool)
{
  svn_stream_t *stream;
  struct stringbuf_stream_baton *baton;

  if (! str)
    return svn_stream_empty(pool);

  baton = apr_palloc(pool, sizeof(*baton));
  baton->str = str;
  baton->amt_read = 0;
  stream = svn_stream_create(baton, pool);
  svn_stream_set_read2(stream, read_handler_stringbuf, read_handler_stringbuf);
  svn_stream_set_skip(stream, skip_handler_stringbuf);
  svn_stream_set_write(stream, write_handler_stringbuf);
  svn_stream_set_mark(stream, mark_handler_stringbuf);
  svn_stream_set_seek(stream, seek_handler_stringbuf);
  svn_stream_set_data_available(stream, data_available_handler_stringbuf);
  svn_stream_set_readline(stream, readline_handler_stringbuf);
  return stream;
}
