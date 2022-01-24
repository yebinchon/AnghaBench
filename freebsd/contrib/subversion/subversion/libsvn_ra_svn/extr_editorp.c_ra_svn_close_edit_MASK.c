#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_2__ {int /*<<< orphan*/  callback_baton; int /*<<< orphan*/  (* callback ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  conn; scalar_t__ got_status; } ;
typedef  TYPE_1__ ra_svn_edit_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *FUNC8(void *edit_baton, apr_pool_t *pool)
{
  ra_svn_edit_baton_t *eb = edit_baton;
  svn_error_t *err;

  FUNC1(!eb->got_status);
  eb->got_status = TRUE;
  FUNC0(FUNC7(eb->conn, pool));
  err = FUNC4(FUNC5(eb->conn, pool, ""));
  if (err)
    {
      return FUNC3(
                    err,
                    FUNC4(
                        FUNC6(eb->conn, pool)));
    }
  if (eb->callback)
    FUNC0(eb->callback(eb->callback_baton));
  return SVN_NO_ERROR;
}