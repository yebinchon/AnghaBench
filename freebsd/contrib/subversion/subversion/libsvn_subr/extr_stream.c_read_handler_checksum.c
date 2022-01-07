
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct checksum_stream_baton {int read_ctx; scalar_t__ read_checksum; int proxy; } ;
typedef int apr_size_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_checksum_update (int ,char*,int ) ;
 int svn_stream_read2 (int ,char*,int *) ;

__attribute__((used)) static svn_error_t *
read_handler_checksum(void *baton, char *buffer, apr_size_t *len)
{
  struct checksum_stream_baton *btn = baton;

  SVN_ERR(svn_stream_read2(btn->proxy, buffer, len));

  if (btn->read_checksum)
    SVN_ERR(svn_checksum_update(btn->read_ctx, buffer, *len));

  return SVN_NO_ERROR;
}
