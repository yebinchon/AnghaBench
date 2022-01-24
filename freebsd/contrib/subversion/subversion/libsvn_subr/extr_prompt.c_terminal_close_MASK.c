#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  pool; } ;
typedef  TYPE_1__ terminal_handle_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ apr_status_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  terminal_plain_cleanup ; 

__attribute__((used)) static svn_error_t *
FUNC4(terminal_handle_t *terminal)
{
  apr_status_t status;

  /* apr_pool_cleanup_kill() removes both normal and child cleanup */
  FUNC1(terminal->pool, terminal, terminal_plain_cleanup);

  status = FUNC3(terminal, TRUE, TRUE);
  if (status)
    return FUNC2(status, NULL, FUNC0("Can't close terminal"));
  return SVN_NO_ERROR;
}