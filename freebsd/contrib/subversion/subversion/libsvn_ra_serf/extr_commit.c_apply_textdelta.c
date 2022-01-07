
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_txdelta_window_handler_t ;
typedef int svn_error_t ;
struct TYPE_4__ {int pool; int base_checksum; int stream; TYPE_1__* commit_ctx; int svndiff; } ;
typedef TYPE_2__ file_context_t ;
typedef int apr_pool_t ;
struct TYPE_3__ {int session; } ;


 int * SVN_NO_ERROR ;
 int SVN_RA_SERF__REQUEST_BODY_IN_MEM_SIZE ;
 int apr_pstrdup (int ,char const*) ;
 int negotiate_put_encoding (int*,int*,int ) ;
 int svn_ra_serf__request_body_create (int ,int ) ;
 int svn_ra_serf__request_body_get_stream (int ) ;
 int svn_stream_disown (int ,int *) ;
 int svn_txdelta_to_svndiff3 (int *,void**,int ,int,int,int *) ;

__attribute__((used)) static svn_error_t *
apply_textdelta(void *file_baton,
                const char *base_checksum,
                apr_pool_t *pool,
                svn_txdelta_window_handler_t *handler,
                void **handler_baton)
{
  file_context_t *ctx = file_baton;
  int svndiff_version;
  int compression_level;
  ctx->svndiff =
    svn_ra_serf__request_body_create(SVN_RA_SERF__REQUEST_BODY_IN_MEM_SIZE,
                                     ctx->pool);
  ctx->stream = svn_ra_serf__request_body_get_stream(ctx->svndiff);

  negotiate_put_encoding(&svndiff_version, &compression_level,
                         ctx->commit_ctx->session);

  svn_txdelta_to_svndiff3(handler, handler_baton,
                          svn_stream_disown(ctx->stream, pool),
                          svndiff_version, compression_level, pool);

  if (base_checksum)
    ctx->base_checksum = apr_pstrdup(ctx->pool, base_checksum);

  return SVN_NO_ERROR;
}
