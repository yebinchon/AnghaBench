#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_serf__session_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_7__ {int /*<<< orphan*/  youngest_rev; TYPE_3__* handler; } ;
typedef  TYPE_2__ options_context_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_6__ {int code; } ;
struct TYPE_8__ {TYPE_1__ sline; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_RA_DAV_OPTIONS_REQ_FAILED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 

svn_error_t *
FUNC10(svn_revnum_t *youngest,
                                    svn_ra_serf__session_t *session,
                                    apr_pool_t *scratch_pool)
{
  options_context_t *opt_ctx;

  FUNC1(FUNC3(session));

  FUNC0(FUNC5(&opt_ctx, session, scratch_pool));
  FUNC0(FUNC8(opt_ctx->handler, scratch_pool));

  if (opt_ctx->handler->sline.code != 200)
    return FUNC7(FUNC9(opt_ctx->handler));

  if (! FUNC2(opt_ctx->youngest_rev))
    return FUNC6(SVN_ERR_RA_DAV_OPTIONS_REQ_FAILED, NULL,
                            FUNC4("The OPTIONS response did not include "
                              "the youngest revision"));

  *youngest = opt_ctx->youngest_rev;

  return SVN_NO_ERROR;
}