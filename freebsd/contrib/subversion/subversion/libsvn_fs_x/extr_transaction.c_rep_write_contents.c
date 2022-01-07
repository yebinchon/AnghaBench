
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_2__ {int delta_stream; int rep_size; int sha1_checksum_ctx; int md5_checksum_ctx; } ;
typedef TYPE_1__ rep_write_baton_t ;
typedef int apr_size_t ;


 int SVN_ERR (int ) ;
 int svn_checksum_update (int ,char const*,int ) ;
 int * svn_stream_write (int ,char const*,int *) ;

__attribute__((used)) static svn_error_t *
rep_write_contents(void *baton,
                   const char *data,
                   apr_size_t *len)
{
  rep_write_baton_t *b = baton;

  SVN_ERR(svn_checksum_update(b->md5_checksum_ctx, data, *len));
  SVN_ERR(svn_checksum_update(b->sha1_checksum_ctx, data, *len));
  b->rep_size += *len;

  return svn_stream_write(b->delta_stream, data, len);
}
