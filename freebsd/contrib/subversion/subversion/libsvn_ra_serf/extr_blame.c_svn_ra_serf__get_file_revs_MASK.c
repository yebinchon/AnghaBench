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
typedef  scalar_t__ svn_revnum_t ;
struct TYPE_12__ {int /*<<< orphan*/ * priv; } ;
typedef  TYPE_2__ svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_ra_serf__xml_context_t ;
typedef  int /*<<< orphan*/  svn_ra_serf__session_t ;
struct TYPE_11__ {int code; } ;
struct TYPE_13__ {char* method; char const* path; char* body_type; TYPE_1__ sline; TYPE_4__* header_delegate_baton; int /*<<< orphan*/  header_delegate; int /*<<< orphan*/  custom_accept_encoding; TYPE_4__* body_delegate_baton; int /*<<< orphan*/  body_delegate; } ;
typedef  TYPE_3__ svn_ra_serf__handler_t ;
typedef  int /*<<< orphan*/  svn_file_rev_handler_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct TYPE_14__ {char const* path; int /*<<< orphan*/ * session; int /*<<< orphan*/  include_merged_revisions; scalar_t__ end; scalar_t__ start; void* file_rev_baton; int /*<<< orphan*/  file_rev; int /*<<< orphan*/ * pool; } ;
typedef  TYPE_4__ blame_context_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  blame_cdata ; 
 int /*<<< orphan*/  blame_closed ; 
 int /*<<< orphan*/  blame_opened ; 
 int /*<<< orphan*/  blame_ttable ; 
 int /*<<< orphan*/  create_file_revs_body ; 
 int /*<<< orphan*/  setup_headers ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC8(svn_ra_session_t *ra_session,
                           const char *path,
                           svn_revnum_t start,
                           svn_revnum_t end,
                           svn_boolean_t include_merged_revisions,
                           svn_file_rev_handler_t rev_handler,
                           void *rev_handler_baton,
                           apr_pool_t *pool)
{
  blame_context_t *blame_ctx;
  svn_ra_serf__session_t *session = ra_session->priv;
  svn_ra_serf__handler_t *handler;
  svn_ra_serf__xml_context_t *xmlctx;
  const char *req_url;
  svn_revnum_t peg_rev;

  blame_ctx = FUNC1(pool, sizeof(*blame_ctx));
  blame_ctx->pool = pool;
  blame_ctx->path = path;
  blame_ctx->file_rev = rev_handler;
  blame_ctx->file_rev_baton = rev_handler_baton;
  blame_ctx->start = start;
  blame_ctx->end = end;
  blame_ctx->include_merged_revisions = include_merged_revisions;
  blame_ctx->session = session;

  /* Since Subversion 1.8 we allow retrieving blames backwards. So we can't
     just unconditionally use end_rev as the peg revision as before */
  if (end > start)
    peg_rev = end;
  else
    peg_rev = start;

  FUNC0(FUNC5(&req_url, NULL /* latest_revnum */,
                                      session,
                                      NULL /* url */, peg_rev,
                                      pool, pool));

  xmlctx = FUNC7(blame_ttable,
                                           blame_opened,
                                           blame_closed,
                                           blame_cdata,
                                           blame_ctx,
                                           pool);
  handler = FUNC4(session, xmlctx, NULL, pool);

  handler->method = "REPORT";
  handler->path = req_url;
  handler->body_type = "text/xml";
  handler->body_delegate = create_file_revs_body;
  handler->body_delegate_baton = blame_ctx;
  handler->custom_accept_encoding = TRUE;
  handler->header_delegate = setup_headers;
  handler->header_delegate_baton = blame_ctx;

  FUNC0(FUNC3(handler, pool));

  if (handler->sline.code != 200)
    return FUNC2(FUNC6(handler));

  return SVN_NO_ERROR;
}