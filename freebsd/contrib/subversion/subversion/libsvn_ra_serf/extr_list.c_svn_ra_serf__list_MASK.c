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
typedef  int /*<<< orphan*/  svn_ra_dirent_receiver_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
struct TYPE_14__ {char const* path; int /*<<< orphan*/  author_buf; int /*<<< orphan*/  props; int /*<<< orphan*/  dirent_fields; int /*<<< orphan*/  depth; int /*<<< orphan*/  const* patterns; int /*<<< orphan*/  revision; void* receiver_baton; int /*<<< orphan*/  receiver; int /*<<< orphan*/ * pool; } ;
typedef  TYPE_4__ list_context_t ;
typedef  int /*<<< orphan*/  apr_uint32_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  create_list_body ; 
 int /*<<< orphan*/  item_closed ; 
 int /*<<< orphan*/  log_ttable ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC9(svn_ra_session_t *ra_session,
                  const char *path,
                  svn_revnum_t revision,
                  const apr_array_header_t *patterns,
                  svn_depth_t depth,
                  apr_uint32_t dirent_fields,
                  svn_ra_dirent_receiver_t receiver,
                  void *receiver_baton,
                  apr_pool_t *scratch_pool)
{
  list_context_t *list_ctx;
  svn_ra_serf__session_t *session = ra_session->priv;
  svn_ra_serf__handler_t *handler;
  svn_ra_serf__xml_context_t *xmlctx;
  const char *req_url;

  list_ctx = FUNC1(scratch_pool, sizeof(*list_ctx));
  list_ctx->pool = scratch_pool;
  list_ctx->receiver = receiver;
  list_ctx->receiver_baton = receiver_baton;
  list_ctx->path = path;
  list_ctx->revision = revision;
  list_ctx->patterns = patterns;
  list_ctx->depth = depth;
  list_ctx->dirent_fields = dirent_fields;
  list_ctx->props = FUNC4(dirent_fields, session,
                                                  scratch_pool);
  list_ctx->author_buf = FUNC8(scratch_pool);

  /* At this point, we may have a deleted file.  So, we'll match ra_neon's
   * behavior and use the larger of start or end as our 'peg' rev.
   */
  FUNC0(FUNC5(&req_url, NULL /* latest_revnum */,
                                      session,
                                      NULL /* url */, revision,
                                      scratch_pool, scratch_pool));

  xmlctx = FUNC7(log_ttable,
                                           NULL, item_closed, NULL,
                                           list_ctx,
                                           scratch_pool);
  handler = FUNC3(session, xmlctx, NULL,
                                              scratch_pool);

  handler->method = "REPORT";
  handler->path = req_url;
  handler->body_delegate = create_list_body;
  handler->body_delegate_baton = list_ctx;
  handler->body_type = "text/xml";

  FUNC0(FUNC2(handler, scratch_pool));

  if (handler->sline.code != 200)
    FUNC0(FUNC6(handler));

  return SVN_NO_ERROR;
}