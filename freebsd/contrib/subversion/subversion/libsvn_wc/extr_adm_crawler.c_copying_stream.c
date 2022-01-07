
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
struct copying_stream_baton {int * target; int * source; } ;
typedef int apr_pool_t ;


 struct copying_stream_baton* apr_palloc (int *,int) ;
 int close_handler_copy ;
 int read_handler_copy ;
 int seek_handler_copy ;
 int * svn_stream_create (struct copying_stream_baton*,int *) ;
 int svn_stream_set_close (int *,int ) ;
 int svn_stream_set_read2 (int *,int *,int ) ;
 int svn_stream_set_seek (int *,int ) ;
 scalar_t__ svn_stream_supports_reset (int *) ;

__attribute__((used)) static svn_stream_t *
copying_stream(svn_stream_t *source,
               svn_stream_t *target,
               apr_pool_t *pool)
{
  struct copying_stream_baton *baton;
  svn_stream_t *stream;

  baton = apr_palloc(pool, sizeof (*baton));
  baton->source = source;
  baton->target = target;

  stream = svn_stream_create(baton, pool);
  svn_stream_set_read2(stream, ((void*)0) ,
                       read_handler_copy);
  svn_stream_set_close(stream, close_handler_copy);

  if (svn_stream_supports_reset(source) && svn_stream_supports_reset(target))
    {
      svn_stream_set_seek(stream, seek_handler_copy);
    }

  return stream;
}
