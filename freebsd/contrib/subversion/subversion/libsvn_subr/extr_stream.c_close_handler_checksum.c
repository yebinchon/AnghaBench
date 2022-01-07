
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct checksum_stream_baton {int proxy; int pool; scalar_t__ write_ctx; int write_checksum; scalar_t__ read_ctx; int read_checksum; scalar_t__ read_more; } ;
typedef int apr_size_t ;


 int SVN_ERR (int ) ;
 int SVN__STREAM_CHUNK_SIZE ;
 char* apr_palloc (int ,int ) ;
 int read_full_handler_checksum (void*,char*,int *) ;
 int svn_checksum_final (int ,scalar_t__,int ) ;
 int * svn_error_trace (int ) ;
 int svn_stream_close (int ) ;

__attribute__((used)) static svn_error_t *
close_handler_checksum(void *baton)
{
  struct checksum_stream_baton *btn = baton;



  if (btn->read_more)
    {
      char *buf = apr_palloc(btn->pool, SVN__STREAM_CHUNK_SIZE);
      apr_size_t len = SVN__STREAM_CHUNK_SIZE;

      do
        {
          SVN_ERR(read_full_handler_checksum(baton, buf, &len));
        }
      while (btn->read_more);
    }

  if (btn->read_ctx)
    SVN_ERR(svn_checksum_final(btn->read_checksum, btn->read_ctx, btn->pool));

  if (btn->write_ctx)
    SVN_ERR(svn_checksum_final(btn->write_checksum, btn->write_ctx, btn->pool));

  return svn_error_trace(svn_stream_close(btn->proxy));
}
