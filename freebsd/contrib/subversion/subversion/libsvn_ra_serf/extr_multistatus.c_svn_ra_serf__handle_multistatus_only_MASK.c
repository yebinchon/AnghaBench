#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_ra_serf__server_error_t ;
struct TYPE_3__ {int /*<<< orphan*/  discard_body; int /*<<< orphan*/ * server_error; int /*<<< orphan*/  handler_pool; } ;
typedef  TYPE_1__ svn_ra_serf__handler_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  serf_request_t ;
typedef  int /*<<< orphan*/  serf_bucket_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

svn_error_t *
FUNC6(serf_request_t *request,
                                     serf_bucket_t *response,
                                     void *baton,
                                     apr_pool_t *scratch_pool)
{
  svn_ra_serf__handler_t *handler = baton;

  /* This function is just like expect_empty_body() except for the
     XML parsing callbacks. We are looking for very limited pieces of
     the multistatus response.  */

  /* We should see this just once, in order to initialize SERVER_ERROR.
     At that point, the core error processing will take over. If we choose
     not to parse an error, then we'll never return here (because we
     change the response handler).  */
  FUNC1(handler->server_error == NULL);

    {
      serf_bucket_t *hdrs;
      const char *val;

      hdrs = FUNC3(response);
      val = FUNC2(hdrs, "Content-Type");
      if (val && FUNC4(val, "text/xml", sizeof("text/xml") - 1) == 0)
        {
          svn_ra_serf__server_error_t *server_err;

          FUNC0(FUNC5(&server_err,
                                                   handler,
                                                   TRUE,
                                                   handler->handler_pool,
                                                   handler->handler_pool));

          handler->server_error = server_err;
        }
      else
        {
          /* The body was not text/xml, so we don't know what to do with it.
             Toss anything that arrives.  */
          handler->discard_body = TRUE;
        }
    }

  /* Returning SVN_NO_ERROR will return APR_SUCCESS to serf, which tells it
     to call the response handler again. That will start up the XML parsing,
     or it will be dropped on the floor (per the decision above).  */
  return SVN_NO_ERROR;
}