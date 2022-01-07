
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct rep_write_baton {scalar_t__ rep_stream; scalar_t__ delta_stream; int rep_size; int sha1_checksum_ctx; int md5_checksum_ctx; } ;
typedef int apr_size_t ;


 int SVN_ERR (int ) ;
 int svn_checksum_update (int ,char const*,int ) ;
 int * svn_stream_write (scalar_t__,char const*,int *) ;

__attribute__((used)) static svn_error_t *
rep_write_contents(void *baton,
                   const char *data,
                   apr_size_t *len)
{
  struct rep_write_baton *b = baton;

  SVN_ERR(svn_checksum_update(b->md5_checksum_ctx, data, *len));
  SVN_ERR(svn_checksum_update(b->sha1_checksum_ctx, data, *len));
  b->rep_size += *len;


  if (b->delta_stream)
    return svn_stream_write(b->delta_stream, data, len);
  else
    return svn_stream_write(b->rep_stream, data, len);
}
