#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_12__ {int /*<<< orphan*/ * priv; } ;
typedef  TYPE_2__ svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_ra_serf__xml_context_t ;
typedef  int /*<<< orphan*/  svn_ra_serf__session_t ;
struct TYPE_11__ {int code; } ;
struct TYPE_13__ {char* method; char const* path; char* body_type; TYPE_1__ sline; TYPE_4__* body_delegate_baton; int /*<<< orphan*/  body_delegate; } ;
typedef  TYPE_3__ svn_ra_serf__handler_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_14__ {char const* path; int /*<<< orphan*/ * paths; int /*<<< orphan*/ * pool; int /*<<< orphan*/  const* location_revisions; int /*<<< orphan*/  peg_revision; } ;
typedef  TYPE_4__ loc_context_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  create_get_locations_body ; 
 int /*<<< orphan*/  getloc_closed ; 
 int /*<<< orphan*/  getloc_ttable ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC8(svn_ra_session_t *ra_session,
                           apr_hash_t **locations,
                           const char *path,
                           svn_revnum_t peg_revision,
                           const apr_array_header_t *location_revisions,
                           apr_pool_t *pool)
{
  loc_context_t *loc_ctx;
  svn_ra_serf__session_t *session = ra_session->priv;
  svn_ra_serf__handler_t *handler;
  svn_ra_serf__xml_context_t *xmlctx;
  const char *req_url;

  loc_ctx = FUNC2(pool, sizeof(*loc_ctx));
  loc_ctx->pool = pool;
  loc_ctx->path = path;
  loc_ctx->peg_revision = peg_revision;
  loc_ctx->location_revisions = location_revisions;
  loc_ctx->paths = FUNC1(loc_ctx->pool);

  *locations = loc_ctx->paths;

  FUNC0(FUNC5(&req_url, NULL /* latest_revnum */,
                                      session,  NULL /* url */, peg_revision,
                                      pool, pool));

  xmlctx = FUNC7(getloc_ttable,
                                           NULL, getloc_closed, NULL,
                                           loc_ctx,
                                           pool);
  handler = FUNC4(session, xmlctx, NULL, pool);

  handler->method = "REPORT";
  handler->path = req_url;
  handler->body_delegate = create_get_locations_body;
  handler->body_delegate_baton = loc_ctx;
  handler->body_type = "text/xml";

  FUNC0(FUNC3(handler, pool));

  if (handler->sline.code != 200)
    FUNC0(FUNC6(handler));

  return SVN_NO_ERROR;
}