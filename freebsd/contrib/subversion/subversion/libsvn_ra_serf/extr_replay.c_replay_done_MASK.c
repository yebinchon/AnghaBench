#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int code; } ;
struct TYPE_6__ {TYPE_1__ sline; scalar_t__ server_error; } ;
typedef  TYPE_2__ svn_ra_serf__handler_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct revision_report_t {int /*<<< orphan*/  pool; int /*<<< orphan*/ * replay_reports; int /*<<< orphan*/ * done; TYPE_2__* report_handler; } ;
typedef  int /*<<< orphan*/  serf_request_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static svn_error_t *
FUNC4(serf_request_t *request,
            void *baton,
            apr_pool_t *scratch_pool)
{
  struct revision_report_t *ctx = baton;
  svn_ra_serf__handler_t *handler = ctx->report_handler;

  if (handler->server_error)
    return FUNC2(handler, scratch_pool);
  else if (handler->sline.code != 200)
    return FUNC0(FUNC3(handler));

  *ctx->done = TRUE; /* Breaks out svn_ra_serf__context_run_wait */

  /* Are re replaying multiple revisions? */
  if (ctx->replay_reports)
    {
      (*ctx->replay_reports)--;
    }

  FUNC1(ctx->pool); /* Destroys handler and request! */

  return SVN_NO_ERROR;
}