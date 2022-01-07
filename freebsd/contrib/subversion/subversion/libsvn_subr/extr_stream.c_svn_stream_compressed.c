
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svn_stream_t {int dummy; } ;
typedef struct svn_stream_t svn_stream_t ;
struct zbaton {int read_flush; int * read_buffer; int * pool; struct svn_stream_t* substream; int * out; int in; } ;
typedef int apr_pool_t ;


 int Z_SYNC_FLUSH ;
 struct zbaton* apr_palloc (int *,int) ;
 int assert (int ) ;
 int close_handler_gz ;
 int read_handler_gz ;
 struct svn_stream_t* svn_stream_create (struct zbaton*,int *) ;
 int svn_stream_set_close (struct svn_stream_t*,int ) ;
 int svn_stream_set_read2 (struct svn_stream_t*,int *,int ) ;
 int svn_stream_set_write (struct svn_stream_t*,int ) ;
 int write_handler_gz ;

svn_stream_t *
svn_stream_compressed(svn_stream_t *stream, apr_pool_t *pool)
{
  struct svn_stream_t *zstream;
  struct zbaton *baton;

  assert(stream != ((void*)0));

  baton = apr_palloc(pool, sizeof(*baton));
  baton->in = baton->out = ((void*)0);
  baton->substream = stream;
  baton->pool = pool;
  baton->read_buffer = ((void*)0);
  baton->read_flush = Z_SYNC_FLUSH;

  zstream = svn_stream_create(baton, pool);
  svn_stream_set_read2(zstream, ((void*)0) ,
                       read_handler_gz);
  svn_stream_set_write(zstream, write_handler_gz);
  svn_stream_set_close(zstream, close_handler_gz);

  return zstream;
}
