#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_ra_serf__xml_context_t ;
struct TYPE_19__ {int /*<<< orphan*/  path; } ;
struct TYPE_21__ {int /*<<< orphan*/  repos_root_str; TYPE_2__ session_url; TYPE_1__* wc_callbacks; } ;
typedef  TYPE_4__ svn_ra_serf__session_t ;
struct TYPE_20__ {int code; } ;
struct TYPE_22__ {char* method; char* body_type; TYPE_3__ sline; TYPE_7__* header_delegate_baton; int /*<<< orphan*/  header_delegate; TYPE_7__* body_delegate_baton; int /*<<< orphan*/  body_delegate; int /*<<< orphan*/  path; } ;
typedef  TYPE_5__ svn_ra_serf__handler_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_23__ {int /*<<< orphan*/  repos_root; int /*<<< orphan*/  revision; } ;
typedef  TYPE_6__ svn_commit_info_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct TYPE_24__ {char const* merge_resource_url; int disable_merge_response; TYPE_6__* commit_info; TYPE_5__* handler; int /*<<< orphan*/  merge_url; int /*<<< orphan*/  keep_locks; int /*<<< orphan*/ * lock_tokens; TYPE_4__* session; int /*<<< orphan*/ * pool; } ;
typedef  TYPE_7__ merge_context_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
struct TYPE_18__ {int /*<<< orphan*/ * push_wc_prop; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_RA_DAV_PROPS_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_7__* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  create_merge_body ; 
 int /*<<< orphan*/  merge_closed ; 
 int /*<<< orphan*/  merge_ttable ; 
 int /*<<< orphan*/  setup_merge_headers ; 
 TYPE_6__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC10 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_7__*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC13(const svn_commit_info_t **commit_info,
                       svn_ra_serf__session_t *session,
                       const char *merge_resource_url,
                       apr_hash_t *lock_tokens,
                       svn_boolean_t keep_locks,
                       apr_pool_t *result_pool,
                       apr_pool_t *scratch_pool)
{
  merge_context_t *merge_ctx;
  svn_ra_serf__handler_t *handler;
  svn_ra_serf__xml_context_t *xmlctx;

  merge_ctx = FUNC4(scratch_pool, sizeof(*merge_ctx));

  merge_ctx->pool = result_pool;
  merge_ctx->session = session;

  merge_ctx->merge_resource_url = merge_resource_url;

  merge_ctx->lock_tokens = lock_tokens;
  merge_ctx->keep_locks = keep_locks;

  /* We don't need the full merge response when working over HTTPv2.
   * Over HTTPv1, this response is only required with a non-null
   * svn_ra_push_wc_prop_func_t callback. */
  merge_ctx->disable_merge_response =
    FUNC2(session) ||
    session->wc_callbacks->push_wc_prop == NULL;

  merge_ctx->commit_info = FUNC6(result_pool);

  merge_ctx->merge_url = session->session_url.path;

  xmlctx = FUNC12(merge_ttable,
                                           NULL, merge_closed, NULL,
                                           merge_ctx,
                                           scratch_pool);
  handler = FUNC10(session, xmlctx, NULL,
                                              scratch_pool);

  handler->method = "MERGE";
  handler->path = merge_ctx->merge_url;
  handler->body_delegate = create_merge_body;
  handler->body_delegate_baton = merge_ctx;
  handler->body_type = "text/xml";

  handler->header_delegate = setup_merge_headers;
  handler->header_delegate_baton = merge_ctx;

  merge_ctx->handler = handler;

  FUNC0(FUNC9(handler, scratch_pool));

  if (handler->sline.code != 200)
    return FUNC8(FUNC11(handler));

  *commit_info = merge_ctx->commit_info;

  /* Sanity check (Reported to be triggered by CodePlex's svnbridge) */
  if (! FUNC1(merge_ctx->commit_info->revision))
    {
      return FUNC7(SVN_ERR_RA_DAV_PROPS_NOT_FOUND, NULL,
                              FUNC3("The MERGE response did not include "
                                "a new revision"));
    }

  merge_ctx->commit_info->repos_root = FUNC5(result_pool,
                                                   session->repos_root_str);

  return SVN_NO_ERROR;
}