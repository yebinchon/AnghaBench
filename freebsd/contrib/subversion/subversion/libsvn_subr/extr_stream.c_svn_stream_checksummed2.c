
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_checksum_t ;
typedef int svn_checksum_kind_t ;
typedef int svn_boolean_t ;
struct checksum_stream_baton {int * pool; int read_more; int * proxy; int ** write_checksum; int ** read_checksum; int * write_ctx; int * read_ctx; } ;
typedef int apr_pool_t ;


 struct checksum_stream_baton* apr_palloc (int *,int) ;
 int close_handler_checksum ;
 int data_available_handler_checksum ;
 int read_full_handler_checksum ;
 int read_handler_checksum ;
 int seek_handler_checksum ;
 void* svn_checksum_ctx_create (int ,int *) ;
 int * svn_stream_create (struct checksum_stream_baton*,int *) ;
 int svn_stream_set_close (int *,int ) ;
 int svn_stream_set_data_available (int *,int ) ;
 int svn_stream_set_read2 (int *,int ,int ) ;
 int svn_stream_set_seek (int *,int ) ;
 int svn_stream_set_write (int *,int ) ;
 scalar_t__ svn_stream_supports_reset (int *) ;
 int write_handler_checksum ;

svn_stream_t *
svn_stream_checksummed2(svn_stream_t *stream,
                        svn_checksum_t **read_checksum,
                        svn_checksum_t **write_checksum,
                        svn_checksum_kind_t checksum_kind,
                        svn_boolean_t read_all,
                        apr_pool_t *pool)
{
  svn_stream_t *s;
  struct checksum_stream_baton *baton;

  if (read_checksum == ((void*)0) && write_checksum == ((void*)0))
    return stream;

  baton = apr_palloc(pool, sizeof(*baton));
  if (read_checksum)
    baton->read_ctx = svn_checksum_ctx_create(checksum_kind, pool);
  else
    baton->read_ctx = ((void*)0);

  if (write_checksum)
    baton->write_ctx = svn_checksum_ctx_create(checksum_kind, pool);
  else
    baton->write_ctx = ((void*)0);

  baton->read_checksum = read_checksum;
  baton->write_checksum = write_checksum;
  baton->proxy = stream;
  baton->read_more = read_all;
  baton->pool = pool;

  s = svn_stream_create(baton, pool);
  svn_stream_set_read2(s, read_handler_checksum, read_full_handler_checksum);
  svn_stream_set_write(s, write_handler_checksum);
  svn_stream_set_data_available(s, data_available_handler_checksum);
  svn_stream_set_close(s, close_handler_checksum);
  if (svn_stream_supports_reset(stream))
    svn_stream_set_seek(s, seek_handler_checksum);
  return s;
}
