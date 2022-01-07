
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_boolean_t ;
struct md5_stream_baton {unsigned char const** read_digest; unsigned char const** write_digest; int write_checksum; int read_checksum; int proxy; int * pool; } ;
typedef int apr_pool_t ;


 struct md5_stream_baton* apr_palloc (int *,int) ;
 int close_handler_md5 ;
 int read_full_handler_md5 ;
 int read_handler_md5 ;
 int skip_handler_md5 ;
 int svn_checksum_md5 ;
 int svn_stream_checksummed2 (int *,int *,int *,int ,int ,int *) ;
 int * svn_stream_create (struct md5_stream_baton*,int *) ;
 int svn_stream_set_close (int *,int ) ;
 int svn_stream_set_read2 (int *,int ,int ) ;
 int svn_stream_set_skip (int *,int ) ;
 int svn_stream_set_write (int *,int ) ;
 int write_handler_md5 ;

svn_stream_t *
svn_stream_checksummed(svn_stream_t *stream,
                       const unsigned char **read_digest,
                       const unsigned char **write_digest,
                       svn_boolean_t read_all,
                       apr_pool_t *pool)
{
  svn_stream_t *s;
  struct md5_stream_baton *baton;

  if (! read_digest && ! write_digest)
    return stream;

  baton = apr_palloc(pool, sizeof(*baton));
  baton->read_digest = read_digest;
  baton->write_digest = write_digest;
  baton->pool = pool;



  baton->proxy
    = svn_stream_checksummed2(stream,
                              read_digest ? &baton->read_checksum : ((void*)0),
                              write_digest ? &baton->write_checksum : ((void*)0),
                              svn_checksum_md5,
                              read_all, pool);




  s = svn_stream_create(baton, pool);
  svn_stream_set_read2(s, read_handler_md5, read_full_handler_md5);
  svn_stream_set_skip(s, skip_handler_md5);
  svn_stream_set_write(s, write_handler_md5);
  svn_stream_set_close(s, close_handler_md5);
  return s;
}
