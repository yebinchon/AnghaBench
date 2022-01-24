#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_ra_serf__session_t ;
struct TYPE_14__ {int code; } ;
struct TYPE_15__ {char* method; char* body_type; TYPE_1__ sline; struct TYPE_15__* response_baton; int /*<<< orphan*/  response_handler; TYPE_4__* body_delegate_baton; int /*<<< orphan*/  body_delegate; TYPE_4__* header_delegate_baton; int /*<<< orphan*/  header_delegate; int /*<<< orphan*/  path; } ;
typedef  TYPE_2__ svn_ra_serf__handler_t ;
struct TYPE_16__ {scalar_t__ apr_err; struct TYPE_16__* child; } ;
typedef  TYPE_3__ svn_error_t ;
struct TYPE_17__ {int /*<<< orphan*/  path; } ;
typedef  TYPE_4__ proppatch_context_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ SVN_ERR_RA_DAV_PROPPATCH_FAILED ; 
 scalar_t__ SVN_ERR_RA_DAV_REQUEST_FAILED ; 
 int /*<<< orphan*/  create_proppatch_body ; 
 int /*<<< orphan*/  setup_proppatch_headers ; 
 TYPE_3__* FUNC0 (TYPE_3__*) ; 
 TYPE_3__* FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_ra_serf__handle_multistatus_only ; 
 TYPE_3__* FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static svn_error_t*
FUNC4(svn_ra_serf__session_t *session,
                   proppatch_context_t *proppatch,
                   apr_pool_t *pool)
{
  svn_ra_serf__handler_t *handler;
  svn_error_t *err;

  handler = FUNC2(session, pool);

  handler->method = "PROPPATCH";
  handler->path = proppatch->path;

  handler->header_delegate = setup_proppatch_headers;
  handler->header_delegate_baton = proppatch;

  handler->body_delegate = create_proppatch_body;
  handler->body_delegate_baton = proppatch;
  handler->body_type = "text/xml";

  handler->response_handler = svn_ra_serf__handle_multistatus_only;
  handler->response_baton = handler;

  err = FUNC1(handler, pool);

  if (!err && handler->sline.code != 207)
    err = FUNC0(FUNC3(handler));

  /* Use specific error code for property handling errors.
     Use loop to provide the right result with tracing */
  if (err && err->apr_err == SVN_ERR_RA_DAV_REQUEST_FAILED)
    {
      svn_error_t *e = err;

      while (e && e->apr_err == SVN_ERR_RA_DAV_REQUEST_FAILED)
        {
          e->apr_err = SVN_ERR_RA_DAV_PROPPATCH_FAILED;
          e = e->child;
        }
    }

  return FUNC0(err);
}