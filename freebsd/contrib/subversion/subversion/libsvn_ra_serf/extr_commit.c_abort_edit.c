
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int code; } ;
struct TYPE_12__ {char* method; TYPE_2__ sline; int * path; int no_fail_on_http_failure_status; struct TYPE_12__* response_baton; int response_handler; } ;
typedef TYPE_3__ svn_ra_serf__handler_t ;
typedef int svn_error_t ;
struct TYPE_13__ {int * txn_url; int * activity_url; TYPE_7__* session; } ;
typedef TYPE_4__ commit_context_t ;
typedef int apr_pool_t ;
struct TYPE_14__ {TYPE_1__** conns; } ;
struct TYPE_10__ {int conn; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 scalar_t__ USING_HTTPV2_COMMIT_SUPPORT (TYPE_4__*) ;
 int serf_connection_reset (int ) ;
 int * svn_error_trace (int ) ;
 int svn_ra_serf__context_run_one (TYPE_3__*,int *) ;
 TYPE_3__* svn_ra_serf__create_handler (TYPE_7__*,int *) ;
 int svn_ra_serf__expect_empty_body ;
 int svn_ra_serf__unexpected_status (TYPE_3__*) ;

__attribute__((used)) static svn_error_t *
abort_edit(void *edit_baton,
           apr_pool_t *pool)
{
  commit_context_t *ctx = edit_baton;
  svn_ra_serf__handler_t *handler;



  if (! (ctx->activity_url || ctx->txn_url))
    return SVN_NO_ERROR;



  serf_connection_reset(ctx->session->conns[0]->conn);


  handler = svn_ra_serf__create_handler(ctx->session, pool);

  handler->method = "DELETE";

  handler->response_handler = svn_ra_serf__expect_empty_body;
  handler->response_baton = handler;
  handler->no_fail_on_http_failure_status = TRUE;

  if (USING_HTTPV2_COMMIT_SUPPORT(ctx))
    handler->path = ctx->txn_url;
  else
    handler->path = ctx->activity_url;

  SVN_ERR(svn_ra_serf__context_run_one(handler, pool));




  if (handler->sline.code != 204
      && handler->sline.code != 403
      && handler->sline.code != 404)
    {
      return svn_error_trace(svn_ra_serf__unexpected_status(handler));
    }


  ctx->activity_url = ((void*)0);
  ctx->txn_url = ((void*)0);

  return SVN_NO_ERROR;
}
