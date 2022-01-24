#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/ * pool; void* activity_collection_url; } ;
typedef  TYPE_2__ svn_ra_serf__session_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_12__ {void* activity_collection; TYPE_5__* handler; } ;
typedef  TYPE_3__ options_context_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_10__ {int code; } ;
struct TYPE_13__ {TYPE_1__ sline; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SVN_ERR_RA_DAV_OPTIONS_REQ_FAILED ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 void* FUNC4 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__**,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*) ; 

svn_error_t *
FUNC10(const char **activity_url,
                                        svn_ra_serf__session_t *session,
                                        apr_pool_t *result_pool,
                                        apr_pool_t *scratch_pool)
{
  options_context_t *opt_ctx;

  FUNC1(!FUNC2(session));

  if (session->activity_collection_url)
    {
      *activity_url = FUNC4(result_pool,
                                  session->activity_collection_url);
      return SVN_NO_ERROR;
    }

  FUNC0(FUNC5(&opt_ctx, session, scratch_pool));
  FUNC0(FUNC8(opt_ctx->handler, scratch_pool));

  if (opt_ctx->handler->sline.code != 200)
    return FUNC7(FUNC9(opt_ctx->handler));

  /* Cache the result. */
  if (opt_ctx->activity_collection)
    {
      session->activity_collection_url =
                    FUNC4(session->pool, opt_ctx->activity_collection);
    }
  else
    {
      return FUNC6(SVN_ERR_RA_DAV_OPTIONS_REQ_FAILED, NULL,
                              FUNC3("The OPTIONS response did not include the "
                                "requested activity-collection-set value"));
    }

  *activity_url = FUNC4(result_pool, opt_ctx->activity_collection);

  return SVN_NO_ERROR;

}