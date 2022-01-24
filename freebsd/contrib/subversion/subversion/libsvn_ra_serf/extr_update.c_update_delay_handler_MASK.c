#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_1__* report; scalar_t__ spillbuf; int /*<<< orphan*/  inner_handler_baton; TYPE_3__* (* inner_handler ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_2__ update_delay_baton_t ;
struct TYPE_15__ {scalar_t__ apr_err; } ;
typedef  TYPE_3__ svn_error_t ;
typedef  void* svn_boolean_t ;
typedef  int /*<<< orphan*/  serf_request_t ;
typedef  int /*<<< orphan*/  serf_bucket_t ;
typedef  scalar_t__ apr_status_t ;
typedef  scalar_t__ apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_13__ {scalar_t__ num_active_fetches; scalar_t__ num_active_propfinds; void* report_received; int /*<<< orphan*/  pool; scalar_t__ send_all_mode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ APR_SUCCESS ; 
 void* FALSE ; 
 int PARSE_CHUNK_SIZE ; 
 scalar_t__ REQUEST_COUNT_TO_RESUME ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  SPILLBUF_BLOCKSIZE ; 
 int /*<<< orphan*/  SPILLBUF_MAXBUFFSIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_3__* SVN_NO_ERROR ; 
 void* TRUE ; 
 TYPE_3__* FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,char const*,scalar_t__,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,char const**,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 TYPE_3__* FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC13 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,char const*,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC16(serf_request_t *request,
                     serf_bucket_t *response,
                     void *handler_baton,
                     apr_pool_t *scratch_pool)
{
  update_delay_baton_t *udb = handler_baton;
  apr_status_t status;
  apr_pool_t *iterpool = NULL;

  if (! udb->spillbuf)
    {
      if (udb->report->send_all_mode)
        {
          /* Easy out... We only have one request, so avoid everything and just
             call the inner handler.

             We will always get in the loop (below) on the first chunk, as only
             the server can get us in true send-all mode */

          return FUNC9(udb->inner_handler(request, response,
                                                    udb->inner_handler_baton,
                                                    scratch_pool));
        }

      while ((udb->report->num_active_fetches + udb->report->num_active_propfinds)
                 < REQUEST_COUNT_TO_RESUME)
        {
          const char *data;
          apr_size_t len;
          svn_boolean_t at_eof = FALSE;
          svn_error_t *err;

          status = FUNC5(response, PARSE_CHUNK_SIZE, &data, &len);
          if (FUNC2(status))
            return FUNC13(status, NULL);
          else if (FUNC1(status))
            udb->report->report_received = at_eof = TRUE;

          if (!iterpool)
            iterpool = FUNC11(scratch_pool);
          else
            FUNC10(iterpool);

          if (len == 0 && !at_eof)
            return FUNC13(status, NULL);

          err = FUNC4(udb, request, data, len, at_eof,
                               FUNC6(request),
                               iterpool);

          if (err && FUNC2(err->apr_err))
            return FUNC9(err);
          else if (err && FUNC0(err->apr_err))
            {
              FUNC8(err); /* Throttling is working ok */
            }
          else if (err && (FUNC1(err->apr_err)))
            {
              FUNC12(iterpool);
              return FUNC9(err); /* No buffering was necessary */
            }
          else
            {
              /* SERF_ERROR_WAIT_CONN should be impossible? */
              return FUNC9(err);
            }
        }

      /* Let's start using the spill infrastructure */
      udb->spillbuf = FUNC14(SPILLBUF_BLOCKSIZE,
                                           SPILLBUF_MAXBUFFSIZE,
                                           udb->report->pool);
    }

  /* Read everything we can to a spillbuffer */
  do
    {
      const char *data;
      apr_size_t len;

      /* ### What blocksize should we pass? */
      status = FUNC5(response, 8*PARSE_CHUNK_SIZE, &data, &len);

      if (!FUNC2(status))
        FUNC3(FUNC15(udb->spillbuf, data, len, scratch_pool));
    }
  while (status == APR_SUCCESS);

  if (FUNC1(status))
    udb->report->report_received = TRUE;

  /* We handle feeding the data from the main context loop, which will be right
     after processing the pending data */

  if (status)
    return FUNC13(status, NULL);
  else
    return SVN_NO_ERROR;
}