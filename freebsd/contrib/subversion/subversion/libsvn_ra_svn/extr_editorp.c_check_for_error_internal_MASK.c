#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
struct TYPE_6__ {TYPE_2__* conn; scalar_t__ got_status; } ;
typedef  TYPE_1__ ra_svn_edit_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_7__ {int may_check_for_error; scalar_t__ error_check_interval; scalar_t__ written_since_error_check; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SVN_ERR_RA_SVN_MALFORMED_DATA ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC7(ra_svn_edit_baton_t *eb, apr_pool_t *pool)
{
  svn_boolean_t available;
  FUNC1(!eb->got_status);

  /* reset TX counter */
  eb->conn->written_since_error_check = 0;

  /* if we weren't asked to always check, wait for at least the next TX */
  eb->conn->may_check_for_error = eb->conn->error_check_interval == 0;

  /* any incoming data? */
  FUNC0(FUNC4(eb->conn, &available));
  if (available)
    {
      eb->got_status = TRUE;
      FUNC0(FUNC6(eb->conn, pool));
      FUNC0(FUNC5(eb->conn, pool, ""));
      /* We shouldn't get here if the consumer is doing its job. */
      return FUNC3(SVN_ERR_RA_SVN_MALFORMED_DATA, NULL,
                              FUNC2("Successful edit status returned too soon"));
    }
  return SVN_NO_ERROR;
}