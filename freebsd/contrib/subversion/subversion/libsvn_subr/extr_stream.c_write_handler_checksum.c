
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct checksum_stream_baton {int proxy; int write_ctx; scalar_t__ write_checksum; } ;
typedef scalar_t__ apr_size_t ;


 int SVN_ERR (int ) ;
 int svn_checksum_update (int ,char const*,scalar_t__) ;
 int * svn_error_trace (int ) ;
 int svn_stream_write (int ,char const*,scalar_t__*) ;

__attribute__((used)) static svn_error_t *
write_handler_checksum(void *baton, const char *buffer, apr_size_t *len)
{
  struct checksum_stream_baton *btn = baton;

  if (btn->write_checksum && *len > 0)
    SVN_ERR(svn_checksum_update(btn->write_ctx, buffer, *len));

  return svn_error_trace(svn_stream_write(btn->proxy, buffer, len));
}
