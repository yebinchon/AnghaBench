
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int svn_ra_serf__session_t ;
struct TYPE_14__ {int code; } ;
struct TYPE_15__ {char* method; char* body_type; TYPE_1__ sline; struct TYPE_15__* response_baton; int response_handler; TYPE_4__* body_delegate_baton; int body_delegate; TYPE_4__* header_delegate_baton; int header_delegate; int path; } ;
typedef TYPE_2__ svn_ra_serf__handler_t ;
struct TYPE_16__ {scalar_t__ apr_err; struct TYPE_16__* child; } ;
typedef TYPE_3__ svn_error_t ;
struct TYPE_17__ {int path; } ;
typedef TYPE_4__ proppatch_context_t ;
typedef int apr_pool_t ;


 scalar_t__ SVN_ERR_RA_DAV_PROPPATCH_FAILED ;
 scalar_t__ SVN_ERR_RA_DAV_REQUEST_FAILED ;
 int create_proppatch_body ;
 int setup_proppatch_headers ;
 TYPE_3__* svn_error_trace (TYPE_3__*) ;
 TYPE_3__* svn_ra_serf__context_run_one (TYPE_2__*,int *) ;
 TYPE_2__* svn_ra_serf__create_handler (int *,int *) ;
 int svn_ra_serf__handle_multistatus_only ;
 TYPE_3__* svn_ra_serf__unexpected_status (TYPE_2__*) ;

__attribute__((used)) static svn_error_t*
proppatch_resource(svn_ra_serf__session_t *session,
                   proppatch_context_t *proppatch,
                   apr_pool_t *pool)
{
  svn_ra_serf__handler_t *handler;
  svn_error_t *err;

  handler = svn_ra_serf__create_handler(session, pool);

  handler->method = "PROPPATCH";
  handler->path = proppatch->path;

  handler->header_delegate = setup_proppatch_headers;
  handler->header_delegate_baton = proppatch;

  handler->body_delegate = create_proppatch_body;
  handler->body_delegate_baton = proppatch;
  handler->body_type = "text/xml";

  handler->response_handler = svn_ra_serf__handle_multistatus_only;
  handler->response_baton = handler;

  err = svn_ra_serf__context_run_one(handler, pool);

  if (!err && handler->sline.code != 207)
    err = svn_error_trace(svn_ra_serf__unexpected_status(handler));



  if (err && err->apr_err == SVN_ERR_RA_DAV_REQUEST_FAILED)
    {
      svn_error_t *e = err;

      while (e && e->apr_err == SVN_ERR_RA_DAV_REQUEST_FAILED)
        {
          e->apr_err = SVN_ERR_RA_DAV_PROPPATCH_FAILED;
          e = e->child;
        }
    }

  return svn_error_trace(err);
}
