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
struct TYPE_14__ {int /*<<< orphan*/ * revision; int /*<<< orphan*/  time; } ;
typedef  TYPE_4__ date_context_t ;
typedef  int /*<<< orphan*/  apr_time_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_RA_DAV_PROPS_NOT_FOUND ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  create_getdate_body ; 
 int /*<<< orphan*/  date_closed ; 
 int /*<<< orphan*/  date_ttable ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC11(svn_ra_session_t *ra_session,
                                svn_revnum_t *revision,
                                apr_time_t tm,
                                apr_pool_t *pool)
{
  date_context_t *date_ctx;
  svn_ra_serf__session_t *session = ra_session->priv;
  svn_ra_serf__handler_t *handler;
  svn_ra_serf__xml_context_t *xmlctx;
  const char *report_target;

  date_ctx = FUNC3(pool, sizeof(*date_ctx));
  date_ctx->time = tm;
  date_ctx->revision = revision;

  FUNC0(FUNC8(&report_target, session, pool));

  xmlctx = FUNC10(date_ttable,
                                           NULL, date_closed, NULL,
                                           date_ctx,
                                           pool);
  handler = FUNC7(session, xmlctx, NULL, pool);

  handler->method = "REPORT";
  handler->path = report_target;
  handler->body_type = "text/xml";

  handler->body_delegate = create_getdate_body;
  handler->body_delegate_baton = date_ctx;

  *date_ctx->revision = SVN_INVALID_REVNUM;

  FUNC0(FUNC6(handler, pool));

  if (handler->sline.code != 200)
    return FUNC5(FUNC9(handler));

  if (!FUNC1(*revision))
    return FUNC4(SVN_ERR_RA_DAV_PROPS_NOT_FOUND, NULL,
                            FUNC2("The REPORT response did not include "
                              "the requested properties"));

  return SVN_NO_ERROR;
}