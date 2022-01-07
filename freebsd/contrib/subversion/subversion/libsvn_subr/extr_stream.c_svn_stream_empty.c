
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int apr_pool_t ;


 int mark_handler_empty ;
 int read_handler_empty ;
 int seek_handler_empty ;
 int * svn_stream_create (int *,int *) ;
 int svn_stream_set_mark (int *,int ) ;
 int svn_stream_set_read2 (int *,int ,int ) ;
 int svn_stream_set_seek (int *,int ) ;
 int svn_stream_set_write (int *,int ) ;
 int write_handler_empty ;

svn_stream_t *
svn_stream_empty(apr_pool_t *pool)
{
  svn_stream_t *stream;

  stream = svn_stream_create(((void*)0), pool);
  svn_stream_set_read2(stream, read_handler_empty, read_handler_empty);
  svn_stream_set_write(stream, write_handler_empty);
  svn_stream_set_mark(stream, mark_handler_empty);
  svn_stream_set_seek(stream, seek_handler_empty);
  return stream;
}
