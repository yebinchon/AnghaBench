#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {TYPE_4__* priv; } ;
typedef  TYPE_3__ svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_ra_serf__xml_context_t ;
struct TYPE_17__ {int /*<<< orphan*/  path; } ;
struct TYPE_20__ {TYPE_1__ session_url; } ;
typedef  TYPE_4__ svn_ra_serf__session_t ;
struct TYPE_18__ {int code; } ;
struct TYPE_21__ {char* method; char const* path; char* body_type; TYPE_2__ sline; TYPE_7__* response_baton; int /*<<< orphan*/  response_handler; int /*<<< orphan*/  no_dav_headers; TYPE_7__* header_delegate_baton; int /*<<< orphan*/  header_delegate; TYPE_7__* body_delegate_baton; int /*<<< orphan*/  body_delegate; } ;
typedef  TYPE_5__ svn_ra_serf__handler_t ;
struct TYPE_22__ {scalar_t__ token; int /*<<< orphan*/  path; } ;
typedef  TYPE_6__ svn_lock_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_23__ {char const* path; TYPE_6__* lock; TYPE_5__* handler; struct TYPE_23__* inner_baton; int /*<<< orphan*/  inner_handler; int /*<<< orphan*/ * pool; } ;
typedef  TYPE_7__ lock_info_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_FS_NOT_FOUND ; 
 int /*<<< orphan*/  SVN_ERR_RA_NOT_IMPLEMENTED ; 
 int /*<<< orphan*/  SVN_ERR_UNSUPPORTED_FEATURE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_7__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  create_getlock_body ; 
 int /*<<< orphan*/  handle_lock ; 
 int /*<<< orphan*/  locks_closed ; 
 int /*<<< orphan*/  locks_expected_status ; 
 int /*<<< orphan*/  locks_ttable ; 
 int /*<<< orphan*/  setup_getlock_headers ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC12 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_7__*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC15(svn_ra_session_t *ra_session,
                      svn_lock_t **lock,
                      const char *path,
                      apr_pool_t *result_pool)
{
  svn_ra_serf__session_t *session = ra_session->priv;
  svn_ra_serf__handler_t *handler;
  svn_ra_serf__xml_context_t *xmlctx;
  apr_pool_t *scratch_pool = FUNC9(result_pool);
  lock_info_t *lock_ctx;
  const char *req_url;
  svn_error_t *err;

  req_url = FUNC8(session->session_url.path, path,
                                        scratch_pool);

  lock_ctx = FUNC1(scratch_pool, sizeof(*lock_ctx));
  lock_ctx->pool = result_pool;
  lock_ctx->path = req_url;
  lock_ctx->lock = FUNC7(result_pool);
  lock_ctx->lock->path = FUNC2(result_pool, path);

  xmlctx = FUNC14(locks_ttable,
                                           NULL, locks_closed, NULL,
                                           lock_ctx,
                                           scratch_pool);
  handler = FUNC12(session, xmlctx,
                                              locks_expected_status,
                                              scratch_pool);

  handler->method = "PROPFIND";
  handler->path = req_url;
  handler->body_type = "text/xml";

  handler->body_delegate = create_getlock_body;
  handler->body_delegate_baton = lock_ctx;

  handler->header_delegate = setup_getlock_headers;
  handler->header_delegate_baton = lock_ctx;

  handler->no_dav_headers = TRUE;

  lock_ctx->inner_handler = handler->response_handler;
  lock_ctx->inner_baton = handler->response_baton;
  handler->response_handler = handle_lock;
  handler->response_baton = lock_ctx;

  lock_ctx->handler = handler;

  err = FUNC11(handler, scratch_pool);

  if ((err && (handler->sline.code == 500 || handler->sline.code == 501))
      || FUNC5(err, SVN_ERR_UNSUPPORTED_FEATURE))
    return FUNC6(
             FUNC4(SVN_ERR_RA_NOT_IMPLEMENTED, err,
                              FUNC0("Server does not support locking features")));
  else if (FUNC5(err, SVN_ERR_FS_NOT_FOUND))
    FUNC3(err); /* Behave like the other RA layers */
  else if (handler->sline.code != 207)
    return FUNC6(FUNC13(handler));

  if (lock_ctx->lock && lock_ctx->lock->token)
    *lock = lock_ctx->lock;
  else
    *lock = NULL;

  FUNC10(scratch_pool);

  return SVN_NO_ERROR;
}