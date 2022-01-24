#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  serve_params_t ;
typedef  enum connection_handling_mode { ____Placeholder_connection_handling_mode } connection_handling_mode ;
struct TYPE_4__ {int ref_count; int /*<<< orphan*/  usock; int /*<<< orphan*/ * params; int /*<<< orphan*/ * pool; } ;
typedef  TYPE_1__ connection_t ;
typedef  scalar_t__ apr_status_t ;
typedef  int /*<<< orphan*/  apr_socket_t ;
typedef  int /*<<< orphan*/  apr_proc_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ APR_CHILD_DONE ; 
 int /*<<< orphan*/  APR_NOWAIT ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int connection_mode_fork ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 () ; 

__attribute__((used)) static svn_error_t *
FUNC11(connection_t **connection,
                  apr_socket_t *sock,
                  serve_params_t *params,
                  enum connection_handling_mode handling_mode,
                  apr_pool_t *pool)
{
  apr_status_t status;

  /* Non-standard pool handling.  The main thread never blocks to join
   *         the connection threads so it cannot clean up after each one.  So
   *         separate pools that can be cleared at thread exit are used. */

  apr_pool_t *connection_pool = FUNC9(pool);
  *connection = FUNC4(connection_pool, sizeof(**connection));
  (*connection)->pool = connection_pool;
  (*connection)->params = params;
  (*connection)->ref_count = 1;

  do
    {
      #ifdef WIN32
      if (winservice_is_stopping())
        exit(0);
      #endif

      status = FUNC6(&(*connection)->usock, sock,
                                 connection_pool);
      if (handling_mode == connection_mode_fork)
        {
          apr_proc_t proc;

          /* Collect any zombie child processes. */
          while (FUNC5(&proc, NULL, NULL, APR_NOWAIT,
            connection_pool) == APR_CHILD_DONE)
            ;
        }
    }
  while (FUNC2(status)
    || FUNC0(status)
    || FUNC1(status));

  return status
       ? FUNC8(status, FUNC3("Can't accept client connection"))
       : SVN_NO_ERROR;
}