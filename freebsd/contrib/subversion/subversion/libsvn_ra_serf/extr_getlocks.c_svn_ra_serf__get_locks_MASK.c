#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_7__ ;
typedef  struct TYPE_31__   TYPE_6__ ;
typedef  struct TYPE_30__   TYPE_5__ ;
typedef  struct TYPE_29__   TYPE_4__ ;
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;

/* Type definitions */
struct TYPE_28__ {TYPE_4__* priv; } ;
typedef  TYPE_3__ svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_ra_serf__xml_context_t ;
struct TYPE_26__ {int /*<<< orphan*/  path; } ;
struct TYPE_29__ {TYPE_1__ session_url; } ;
typedef  TYPE_4__ svn_ra_serf__session_t ;
struct TYPE_27__ {int code; } ;
struct TYPE_30__ {char* method; char const* path; char* body_type; TYPE_2__ sline; TYPE_7__* body_delegate_baton; int /*<<< orphan*/  body_delegate; } ;
typedef  TYPE_5__ svn_ra_serf__handler_t ;
struct TYPE_31__ {scalar_t__ apr_err; } ;
typedef  TYPE_6__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
struct TYPE_32__ {int /*<<< orphan*/ * hash; int /*<<< orphan*/  requested_depth; int /*<<< orphan*/  path; int /*<<< orphan*/ * pool; } ;
typedef  TYPE_7__ lock_context_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_ERR_FS_NOT_FOUND ; 
 int /*<<< orphan*/  SVN_ERR_RA_NOT_IMPLEMENTED ; 
 int /*<<< orphan*/  SVN_ERR_UNSUPPORTED_FEATURE ; 
 TYPE_6__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_VA_NULL ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_7__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  create_getlocks_body ; 
 int /*<<< orphan*/  getlocks_closed ; 
 int /*<<< orphan*/  getlocks_ttable ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 TYPE_6__* FUNC5 (int /*<<< orphan*/ ,TYPE_6__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC7 (TYPE_6__*) ; 
 char* FUNC8 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 TYPE_6__* FUNC9 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC10 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char const**,char const*,TYPE_4__*,int /*<<< orphan*/ *) ; 
 TYPE_6__* FUNC12 (TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_7__*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC14(svn_ra_session_t *ra_session,
                       apr_hash_t **locks,
                       const char *path,
                       svn_depth_t depth,
                       apr_pool_t *pool)
{
  lock_context_t *lock_ctx;
  svn_ra_serf__session_t *session = ra_session->priv;
  svn_ra_serf__handler_t *handler;
  svn_ra_serf__xml_context_t *xmlctx;
  const char *req_url, *rel_path;
  svn_error_t *err;

  req_url = FUNC8(session->session_url.path, path, pool);
  FUNC0(FUNC11(&rel_path, req_url, session, pool));

  lock_ctx = FUNC2(pool, sizeof(*lock_ctx));
  lock_ctx->pool = pool;
  lock_ctx->path = FUNC3(pool, "/", rel_path, SVN_VA_NULL);
  lock_ctx->requested_depth = depth;
  lock_ctx->hash = FUNC1(pool);

  xmlctx = FUNC13(getlocks_ttable,
                                           NULL, getlocks_closed, NULL,
                                           lock_ctx,
                                           pool);
  handler = FUNC10(session, xmlctx, NULL, pool);

  handler->method = "REPORT";
  handler->path = req_url;
  handler->body_type = "text/xml";

  handler->body_delegate = create_getlocks_body;
  handler->body_delegate_baton = lock_ctx;

  err = FUNC9(handler, pool);

  if (err)
    {
      if (FUNC6(err, SVN_ERR_UNSUPPORTED_FEATURE))
        {
          /* The server told us that it doesn't support this report type.
             We return the documented error for svn_ra_get_locks(), but
             with the original error report */
          return FUNC5(SVN_ERR_RA_NOT_IMPLEMENTED, err, NULL);
        }
      else if (err->apr_err == SVN_ERR_FS_NOT_FOUND)
        {
          /* File doesn't exist in HEAD: Not an error */
          FUNC4(err);
        }
      else
        return FUNC7(err);
    }

  /* We get a 404 when a path doesn't exist in HEAD, but it might
     have existed earlier (E.g. 'svn ls http://s/svn/trunk/file@1' */
  if (handler->sline.code != 200
      && handler->sline.code != 404)
    {
      return FUNC7(FUNC12(handler));
    }

  *locks = lock_ctx->hash;

  return SVN_NO_ERROR;
}