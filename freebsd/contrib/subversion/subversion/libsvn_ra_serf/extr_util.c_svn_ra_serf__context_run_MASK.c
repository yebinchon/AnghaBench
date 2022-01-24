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
struct TYPE_3__ {scalar_t__ pending_error; scalar_t__ timeout; int /*<<< orphan*/  context; int /*<<< orphan*/  cancel_baton; int /*<<< orphan*/ * (* cancel_func ) (int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ svn_ra_serf__session_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ apr_status_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  scalar_t__ apr_interval_time_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ SVN_ERR_BAD_CATEGORY_START ; 
 scalar_t__ SVN_ERR_LAST ; 
 scalar_t__ SVN_ERR_RA_DAV_CONN_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ SVN_NO_ERROR ; 
 scalar_t__ SVN_RA_SERF__CONTEXT_RUN_DURATION ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (scalar_t__,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC10(svn_ra_serf__session_t *sess,
                         apr_interval_time_t *waittime_left,
                         apr_pool_t *scratch_pool)
{
  apr_status_t status;
  svn_error_t *err;
  FUNC4(sess->pending_error == SVN_NO_ERROR);

  if (sess->cancel_func)
    FUNC1(sess->cancel_func(sess->cancel_baton));

  status = FUNC5(sess->context,
                            SVN_RA_SERF__CONTEXT_RUN_DURATION,
                            scratch_pool);

  err = sess->pending_error;
  sess->pending_error = SVN_NO_ERROR;

   /* If the context duration timeout is up, we'll subtract that
      duration from the total time alloted for such things.  If
      there's no time left, we fail with a message indicating that
      the connection timed out.  */
  if (FUNC0(status))
    {
      status = 0;

      if (sess->timeout)
        {
          if (*waittime_left > SVN_RA_SERF__CONTEXT_RUN_DURATION)
            {
              *waittime_left -= SVN_RA_SERF__CONTEXT_RUN_DURATION;
            }
          else
            {
              return
                  FUNC7(
                        err,
                        FUNC8(SVN_ERR_RA_DAV_CONN_TIMEOUT, NULL,
                                         FUNC3("Connection timed out")));
            }
        }
    }
  else
    {
      *waittime_left = sess->timeout;
    }

  FUNC1(err);
  if (status)
    {
      /* ### This omits SVN_WARNING, and possibly relies on the fact that
         ### MAX(SERF_ERROR_*) < SVN_ERR_BAD_CATEGORY_START? */
      if (status >= SVN_ERR_BAD_CATEGORY_START && status < SVN_ERR_LAST)
        {
          /* apr can't translate subversion errors to text */
          FUNC2(FUNC8(status, NULL, NULL),
                    FUNC3("Error running context"));
        }

      return FUNC9(status, FUNC3("Error running context"));
    }

  return SVN_NO_ERROR;
}