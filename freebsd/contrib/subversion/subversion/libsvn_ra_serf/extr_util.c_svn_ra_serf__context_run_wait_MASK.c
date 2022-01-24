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
struct TYPE_6__ {scalar_t__ pending_error; int num_conns; TYPE_1__** conns; int /*<<< orphan*/  timeout; } ;
typedef  TYPE_2__ svn_ra_serf__session_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_interval_time_t ;
struct TYPE_5__ {int /*<<< orphan*/  bkt_alloc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC7(svn_boolean_t *done,
                              svn_ra_serf__session_t *sess,
                              apr_pool_t *scratch_pool)
{
  apr_pool_t *iterpool;
  apr_interval_time_t waittime_left = sess->timeout;

  FUNC1(sess->pending_error == SVN_NO_ERROR);

  iterpool = FUNC4(scratch_pool);
  while (!*done)
    {
      int i;

      FUNC3(iterpool);

      FUNC0(FUNC6(sess, &waittime_left, iterpool));

      /* Debugging purposes only! */
      for (i = 0; i < sess->num_conns; i++)
        {
          FUNC2(sess->conns[i]->bkt_alloc);
        }
    }
  FUNC5(iterpool);

  return SVN_NO_ERROR;
}