
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int code; } ;
struct TYPE_14__ {char* method; char* body_type; TYPE_1__ sline; TYPE_5__* header_delegate_baton; int header_delegate; TYPE_5__* body_delegate_baton; int body_delegate; struct TYPE_14__* response_baton; int response_handler; int path; } ;
typedef TYPE_3__ svn_ra_serf__handler_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_15__ {int base_revision; int prop_changes; TYPE_2__* commit_ctx; int path; int relpath; int * pool; } ;
typedef TYPE_4__ proppatch_context_t ;
struct TYPE_16__ {char const* result_checksum; TYPE_2__* commit_ctx; int relpath; scalar_t__ remote_result_checksum; int base_revision; int prop_changes; int url; scalar_t__ svndiff; int copy_path; scalar_t__ added; int stream; int svndiff_sent; } ;
typedef TYPE_5__ file_context_t ;
typedef int apr_pool_t ;
struct TYPE_13__ {int open_batons; int session; } ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 char* SVN_SVNDIFF_MIME_TYPE ;
 scalar_t__ TRUE ;
 int _ (char*) ;
 scalar_t__ apr_hash_count (int ) ;
 TYPE_4__* apr_pcalloc (int *,int) ;
 int create_empty_put_body ;
 int proppatch_resource (int ,TYPE_4__*,int *) ;
 int setup_put_headers ;
 int svn_checksum_match (int *,scalar_t__) ;
 int svn_checksum_md5 ;
 int * svn_checksum_mismatch_err (int *,scalar_t__,int *,int ,int ) ;
 int svn_checksum_parse_hex (int **,int ,char const*,int *) ;
 int svn_dirent_local_style (int ,int *) ;
 int * svn_error_trace (int ) ;
 int svn_ra_serf__context_run_one (TYPE_3__*,int *) ;
 TYPE_3__* svn_ra_serf__create_handler (int ,int *) ;
 int svn_ra_serf__expect_empty_body ;
 int svn_ra_serf__request_body_cleanup (scalar_t__,int *) ;
 int svn_ra_serf__request_body_get_delegate (int *,TYPE_5__**,scalar_t__) ;
 int svn_ra_serf__unexpected_status (TYPE_3__*) ;
 int svn_stream_close (int ) ;

__attribute__((used)) static svn_error_t *
close_file(void *file_baton,
           const char *text_checksum,
           apr_pool_t *scratch_pool)
{
  file_context_t *ctx = file_baton;
  svn_boolean_t put_empty_file = FALSE;

  ctx->result_checksum = text_checksum;




  if ((!ctx->svndiff) && ctx->added && (!ctx->copy_path))
    put_empty_file = TRUE;


  if ((ctx->svndiff || put_empty_file) && !ctx->svndiff_sent)
    {
      svn_ra_serf__handler_t *handler;
      int expected_result;

      handler = svn_ra_serf__create_handler(ctx->commit_ctx->session,
                                            scratch_pool);

      handler->method = "PUT";
      handler->path = ctx->url;

      handler->response_handler = svn_ra_serf__expect_empty_body;
      handler->response_baton = handler;

      if (put_empty_file)
        {
          handler->body_delegate = create_empty_put_body;
          handler->body_delegate_baton = ctx;
          handler->body_type = "text/plain";
        }
      else
        {
          SVN_ERR(svn_stream_close(ctx->stream));

          svn_ra_serf__request_body_get_delegate(&handler->body_delegate,
                                                 &handler->body_delegate_baton,
                                                 ctx->svndiff);
          handler->body_type = SVN_SVNDIFF_MIME_TYPE;
        }

      handler->header_delegate = setup_put_headers;
      handler->header_delegate_baton = ctx;

      SVN_ERR(svn_ra_serf__context_run_one(handler, scratch_pool));

      if (ctx->added && ! ctx->copy_path)
        expected_result = 201;
      else
        expected_result = 204;

      if (handler->sline.code != expected_result)
        return svn_error_trace(svn_ra_serf__unexpected_status(handler));
    }


  if (ctx->svndiff)
    SVN_ERR(svn_ra_serf__request_body_cleanup(ctx->svndiff, scratch_pool));


  if (apr_hash_count(ctx->prop_changes))
    {
      proppatch_context_t *proppatch;

      proppatch = apr_pcalloc(scratch_pool, sizeof(*proppatch));
      proppatch->pool = scratch_pool;
      proppatch->relpath = ctx->relpath;
      proppatch->path = ctx->url;
      proppatch->commit_ctx = ctx->commit_ctx;
      proppatch->prop_changes = ctx->prop_changes;
      proppatch->base_revision = ctx->base_revision;

      SVN_ERR(proppatch_resource(ctx->commit_ctx->session,
                                 proppatch, scratch_pool));
    }

  if (ctx->result_checksum && ctx->remote_result_checksum)
    {
      svn_checksum_t *result_checksum;

      SVN_ERR(svn_checksum_parse_hex(&result_checksum, svn_checksum_md5,
                                     ctx->result_checksum, scratch_pool));

      if (!svn_checksum_match(result_checksum, ctx->remote_result_checksum))
        return svn_checksum_mismatch_err(result_checksum,
                                         ctx->remote_result_checksum,
                                         scratch_pool,
                                         _("Checksum mismatch for '%s'"),
                                         svn_dirent_local_style(ctx->relpath,
                                                                scratch_pool));
    }

  ctx->commit_ctx->open_batons--;

  return SVN_NO_ERROR;
}
