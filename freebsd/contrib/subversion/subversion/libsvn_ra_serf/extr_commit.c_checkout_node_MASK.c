#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int code; } ;
struct TYPE_11__ {char* body_type; char* method; char const* path; int /*<<< orphan*/ * location; TYPE_1__ sline; struct TYPE_11__* response_baton; int /*<<< orphan*/  response_handler; void* body_delegate_baton; int /*<<< orphan*/  body_delegate; } ;
typedef  TYPE_2__ svn_ra_serf__handler_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_12__ {scalar_t__ activity_url; int /*<<< orphan*/  session; } ;
typedef  TYPE_3__ commit_context_t ;
struct TYPE_13__ {int /*<<< orphan*/  path; } ;
typedef  TYPE_4__ apr_uri_t ;
typedef  scalar_t__ apr_status_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_RA_DAV_MALFORMED_DATA ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  create_checkout_body ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_ra_serf__expect_empty_body ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 char* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC9(const char **working_url,
              const commit_context_t *commit_ctx,
              const char *node_url,
              apr_pool_t *result_pool,
              apr_pool_t *scratch_pool)
{
  svn_ra_serf__handler_t *handler;
  apr_status_t status;
  apr_uri_t uri;

  /* HANDLER_POOL is the scratch pool since we don't need to remember
     anything from the handler. We just want the working resource.  */
  handler = FUNC6(commit_ctx->session, scratch_pool);

  handler->body_delegate = create_checkout_body;
  handler->body_delegate_baton = (/* const */ void *)commit_ctx->activity_url;
  handler->body_type = "text/xml";

  handler->response_handler = svn_ra_serf__expect_empty_body;
  handler->response_baton = handler;

  handler->method = "CHECKOUT";
  handler->path = node_url;

  FUNC0(FUNC5(handler, scratch_pool));

  if (handler->sline.code != 201)
    return FUNC4(FUNC7(handler));

  if (handler->location == NULL)
    return FUNC3(SVN_ERR_RA_DAV_MALFORMED_DATA, NULL,
                            FUNC1("No Location header received"));

  /* We only want the path portion of the Location header.
     (code.google.com sometimes returns an 'http:' scheme for an
     'https:' transaction ... we'll work around that by stripping the
     scheme, host, and port here and re-adding the correct ones
     later.  */
  status = FUNC2(scratch_pool, handler->location, &uri);
  if (status)
    return FUNC3(SVN_ERR_RA_DAV_MALFORMED_DATA, NULL,
                            FUNC1("Error parsing Location header value"));

  *working_url = FUNC8(uri.path, result_pool);

  return SVN_NO_ERROR;
}