
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int svn_txdelta_stream_open_func_t ;
struct TYPE_12__ {int code; } ;
struct TYPE_13__ {char* method; TYPE_2__ sline; TYPE_6__* header_delegate_baton; int header_delegate; int body_type; TYPE_5__* body_delegate_baton; int body_delegate; TYPE_4__* response_baton; int response_handler; int path; } ;
typedef TYPE_3__ svn_ra_serf__handler_t ;
typedef int svn_error_t ;
typedef int svn_delta_editor_t ;
struct TYPE_14__ {TYPE_6__* file_ctx; TYPE_3__* handler; } ;
typedef TYPE_4__ put_response_ctx_t ;
struct TYPE_15__ {int * err; void* open_baton; int open_func; int session; int member_0; } ;
typedef TYPE_5__ open_txdelta_baton_t ;
struct TYPE_16__ {char const* base_checksum; int copy_path; scalar_t__ added; TYPE_1__* commit_ctx; int url; int svndiff_sent; } ;
typedef TYPE_6__ file_context_t ;
typedef int apr_pool_t ;
struct TYPE_11__ {int session; } ;


 int * SVN_NO_ERROR ;
 int SVN_SVNDIFF_MIME_TYPE ;
 int TRUE ;
 TYPE_4__* apr_pcalloc (int *,int) ;
 int create_body_from_txdelta_stream ;
 int put_response_handler ;
 int setup_put_headers ;
 int svn_error_clear (int *) ;
 int * svn_error_trace (int *) ;
 int * svn_ra_serf__context_run_one (TYPE_3__*,int *) ;
 TYPE_3__* svn_ra_serf__create_handler (int ,int *) ;
 int * svn_ra_serf__unexpected_status (TYPE_3__*) ;

__attribute__((used)) static svn_error_t *
apply_textdelta_stream(const svn_delta_editor_t *editor,
                       void *file_baton,
                       const char *base_checksum,
                       svn_txdelta_stream_open_func_t open_func,
                       void *open_baton,
                       apr_pool_t *scratch_pool)
{
  file_context_t *ctx = file_baton;
  open_txdelta_baton_t open_txdelta_baton = {0};
  svn_ra_serf__handler_t *handler;
  put_response_ctx_t *prc;
  int expected_result;
  svn_error_t *err;





  ctx->svndiff_sent = TRUE;
  ctx->base_checksum = base_checksum;

  handler = svn_ra_serf__create_handler(ctx->commit_ctx->session,
                                        scratch_pool);
  handler->method = "PUT";
  handler->path = ctx->url;

  prc = apr_pcalloc(scratch_pool, sizeof(*prc));
  prc->handler = handler;
  prc->file_ctx = ctx;

  handler->response_handler = put_response_handler;
  handler->response_baton = prc;

  open_txdelta_baton.session = ctx->commit_ctx->session;
  open_txdelta_baton.open_func = open_func;
  open_txdelta_baton.open_baton = open_baton;
  open_txdelta_baton.err = SVN_NO_ERROR;

  handler->body_delegate = create_body_from_txdelta_stream;
  handler->body_delegate_baton = &open_txdelta_baton;
  handler->body_type = SVN_SVNDIFF_MIME_TYPE;

  handler->header_delegate = setup_put_headers;
  handler->header_delegate_baton = ctx;

  err = svn_ra_serf__context_run_one(handler, scratch_pool);

  if (open_txdelta_baton.err)
    {
      svn_error_clear(err);
      return svn_error_trace(open_txdelta_baton.err);
    }
  else if (err)
    return svn_error_trace(err);

  if (ctx->added && !ctx->copy_path)
    expected_result = 201;
  else
    expected_result = 204;

  if (handler->sline.code != expected_result)
    return svn_error_trace(svn_ra_serf__unexpected_status(handler));

  return SVN_NO_ERROR;
}
