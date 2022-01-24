#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  conn_latency; int /*<<< orphan*/  capabilities; } ;
typedef  TYPE_1__ svn_ra_serf__session_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  serf_request_t ;
typedef  int /*<<< orphan*/  serf_connection_t ;
typedef  int /*<<< orphan*/  serf_bucket_t ;
struct TYPE_5__ {int /*<<< orphan*/  inner_baton; int /*<<< orphan*/ * (* inner_handler ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;scalar_t__ headers_processed; TYPE_1__* session; } ;
typedef  TYPE_2__ options_context_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_RA_CAPABILITY_ATOMIC_REVPROPS ; 
 int /*<<< orphan*/  SVN_RA_CAPABILITY_DEPTH ; 
 int /*<<< orphan*/  SVN_RA_CAPABILITY_EPHEMERAL_TXNPROPS ; 
 int /*<<< orphan*/  SVN_RA_CAPABILITY_GET_FILE_REVS_REVERSE ; 
 int /*<<< orphan*/  SVN_RA_CAPABILITY_INHERITED_PROPS ; 
 int /*<<< orphan*/  SVN_RA_CAPABILITY_LIST ; 
 int /*<<< orphan*/  SVN_RA_CAPABILITY_LOG_REVPROPS ; 
 int /*<<< orphan*/  SVN_RA_CAPABILITY_MERGEINFO ; 
 int /*<<< orphan*/  SVN_RA_CAPABILITY_PARTIAL_REPLAY ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  capabilities_headers_iterator_callback ; 
 int /*<<< orphan*/ * capability_no ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC7(serf_request_t *request,
                         serf_bucket_t *response,
                         void *baton,
                         apr_pool_t *pool)
{
  options_context_t *opt_ctx = baton;

  if (!opt_ctx->headers_processed)
    {
      svn_ra_serf__session_t *session = opt_ctx->session;
      serf_bucket_t *hdrs = FUNC1(response);
      serf_connection_t *conn;

      /* Start out assuming all capabilities are unsupported. */
      FUNC6(session->capabilities, SVN_RA_CAPABILITY_PARTIAL_REPLAY,
                    capability_no);
      FUNC6(session->capabilities, SVN_RA_CAPABILITY_DEPTH,
                    capability_no);
      FUNC6(session->capabilities, SVN_RA_CAPABILITY_MERGEINFO,
                    NULL);
      FUNC6(session->capabilities, SVN_RA_CAPABILITY_LOG_REVPROPS,
                    capability_no);
      FUNC6(session->capabilities, SVN_RA_CAPABILITY_ATOMIC_REVPROPS,
                    capability_no);
      FUNC6(session->capabilities, SVN_RA_CAPABILITY_INHERITED_PROPS,
                    capability_no);
      FUNC6(session->capabilities, SVN_RA_CAPABILITY_EPHEMERAL_TXNPROPS,
                    capability_no);
      FUNC6(session->capabilities, SVN_RA_CAPABILITY_GET_FILE_REVS_REVERSE,
                    capability_no);
      FUNC6(session->capabilities, SVN_RA_CAPABILITY_LIST,
                    capability_no);

      /* Then see which ones we can discover. */
      FUNC0(hdrs, capabilities_headers_iterator_callback,
                             opt_ctx);

      /* Assume mergeinfo capability unsupported, if didn't receive information
         about server or repository mergeinfo capability. */
      if (!FUNC5(session->capabilities, SVN_RA_CAPABILITY_MERGEINFO))
        FUNC6(session->capabilities, SVN_RA_CAPABILITY_MERGEINFO,
                      capability_no);

      /* Remember our latency. */
      conn = FUNC3(request);
      session->conn_latency = FUNC2(conn);

      opt_ctx->headers_processed = TRUE;
    }

  /* Execute the 'real' response handler to XML-parse the response body. */
  return opt_ctx->inner_handler(request, response, opt_ctx->inner_baton, pool);
}