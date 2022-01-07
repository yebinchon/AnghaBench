
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int apr_pool_t ;


 int data_available_disown ;
 int mark_handler_disown ;
 int read_full_handler_disown ;
 int read_handler_disown ;
 int readline_handler_disown ;
 int seek_handler_disown ;
 int skip_handler_disown ;
 int * svn_stream_create (int *,int *) ;
 int svn_stream_set_data_available (int *,int ) ;
 int svn_stream_set_mark (int *,int ) ;
 int svn_stream_set_read2 (int *,int ,int ) ;
 int svn_stream_set_readline (int *,int ) ;
 int svn_stream_set_seek (int *,int ) ;
 int svn_stream_set_skip (int *,int ) ;
 int svn_stream_set_write (int *,int ) ;
 int write_handler_disown ;

svn_stream_t *
svn_stream_disown(svn_stream_t *stream, apr_pool_t *pool)
{
  svn_stream_t *s = svn_stream_create(stream, pool);

  svn_stream_set_read2(s, read_handler_disown, read_full_handler_disown);
  svn_stream_set_skip(s, skip_handler_disown);
  svn_stream_set_write(s, write_handler_disown);
  svn_stream_set_mark(s, mark_handler_disown);
  svn_stream_set_seek(s, seek_handler_disown);
  svn_stream_set_data_available(s, data_available_disown);
  svn_stream_set_readline(s, readline_handler_disown);

  return s;
}
