#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ spillbuf; struct TYPE_16__* inner_handler_baton; int /*<<< orphan*/  inner_handler; TYPE_6__* report; } ;
typedef  TYPE_3__ update_delay_baton_t ;
struct TYPE_17__ {int cur_conn; int num_conns; TYPE_1__** conns; int /*<<< orphan*/  timeout; } ;
typedef  TYPE_4__ svn_ra_serf__session_t ;
struct TYPE_18__ {scalar_t__ server_error; scalar_t__ done; TYPE_3__* response_baton; int /*<<< orphan*/  response_handler; } ;
typedef  TYPE_5__ svn_ra_serf__handler_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_19__ {int /*<<< orphan*/  editor_baton; TYPE_2__* editor; scalar_t__ done; scalar_t__ num_active_propfinds; scalar_t__ num_active_fetches; TYPE_4__* sess; } ;
typedef  TYPE_6__ report_context_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_interval_time_t ;
struct TYPE_15__ {int /*<<< orphan*/ * (* close_edit ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
struct TYPE_14__ {int /*<<< orphan*/  bkt_alloc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_RA_DAV_MALFORMED_DATA ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  update_delay_handler ; 

__attribute__((used)) static svn_error_t *
FUNC15(report_context_t *ctx,
                      svn_ra_serf__handler_t *handler,
                      apr_pool_t *scratch_pool)
{
  svn_ra_serf__session_t *sess = ctx->sess;
  apr_pool_t *iterpool = FUNC11(scratch_pool);
  apr_interval_time_t waittime_left = sess->timeout;
  update_delay_baton_t *ud;

  /* Now wrap the response handler with delay support to avoid sending
     out too many requests at once */
  ud = FUNC3(scratch_pool, sizeof(*ud));
  ud->report = ctx;

  ud->inner_handler = handler->response_handler;
  ud->inner_handler_baton = handler->response_baton;

  handler->response_handler = update_delay_handler;
  handler->response_baton = ud;

  /* Open the first extra connection. */
  FUNC0(FUNC4(sess, 0));

  sess->cur_conn = 1;

  /* Note that we may have no active GET or PROPFIND requests, yet the
     processing has not been completed. This could be from a delay on the
     network or because we've spooled the entire response into our "pending"
     content of the XML parser. The DONE flag will get set when all the
     XML content has been received *and* parsed.  */
  while (!handler->done
         || ctx->num_active_fetches
         || ctx->num_active_propfinds
         || !ctx->done)
    {
      svn_error_t *err;
      int i;

      FUNC10(iterpool);

      err = FUNC13(sess, &waittime_left, iterpool);

      if (handler->done && handler->server_error)
        {
          FUNC8(err);
          err = FUNC14(handler, iterpool);

          FUNC1(err != NULL);
        }

      FUNC0(err);

      /* If there is pending REPORT data, process it now. */
      if (ud->spillbuf)
        FUNC0(FUNC5(ud, iterpool));

      /* Debugging purposes only! */
      for (i = 0; i < sess->num_conns; i++)
        {
          FUNC6(sess->conns[i]->bkt_alloc);
        }
    }

  FUNC10(iterpool);

  /* If we got a complete report, close the edit.  Otherwise, abort it. */
  if (ctx->done)
    FUNC0(ctx->editor->close_edit(ctx->editor_baton, iterpool));
  else
    return FUNC9(SVN_ERR_RA_DAV_MALFORMED_DATA, NULL,
                            FUNC2("Missing update-report close tag"));

  FUNC12(iterpool);
  return SVN_NO_ERROR;
}