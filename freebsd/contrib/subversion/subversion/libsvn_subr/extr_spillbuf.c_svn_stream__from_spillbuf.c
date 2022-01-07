
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_spillbuf_t ;
struct spillbuf_baton {int scratch_pool; TYPE_1__* reader; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {int * buf; } ;


 struct spillbuf_baton* apr_palloc (int *,int) ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int read_handler_spillbuf ;
 int svn_pool_create (int *) ;
 int * svn_stream_create (struct spillbuf_baton*,int *) ;
 int svn_stream_set_read2 (int *,int *,int ) ;
 int svn_stream_set_write (int *,int ) ;
 int write_handler_spillbuf ;

svn_stream_t *
svn_stream__from_spillbuf(svn_spillbuf_t *buf,
                          apr_pool_t *result_pool)
{
  svn_stream_t *stream;
  struct spillbuf_baton *sb = apr_palloc(result_pool, sizeof(*sb));

  sb->reader = apr_pcalloc(result_pool, sizeof(*sb->reader));
  sb->reader->buf = buf;
  sb->scratch_pool = svn_pool_create(result_pool);

  stream = svn_stream_create(sb, result_pool);

  svn_stream_set_read2(stream, ((void*)0) ,
                       read_handler_spillbuf);
  svn_stream_set_write(stream, write_handler_spillbuf);

  return stream;
}
