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
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  svn_ra_svn_conn_t ;
typedef  int /*<<< orphan*/  svn_ra_svn__list_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_3__ {int /*<<< orphan*/  pool; int /*<<< orphan*/ * dstream; } ;
typedef  TYPE_1__ ra_svn_token_entry_t ;
typedef  int /*<<< orphan*/  ra_svn_driver_state_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_RA_SVN_MALFORMED_DATA ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC8(svn_ra_svn_conn_t *conn,
                            apr_pool_t *pool,
                            const svn_ra_svn__list_t *params,
                            ra_svn_driver_state_t *ds)
{
  svn_string_t *token;
  ra_svn_token_entry_t *entry;

  /* Parse arguments and look up the token. */
  FUNC1(FUNC6(params, "s", &token));
  FUNC1(FUNC3(ds, token, TRUE, &entry));
  if (!entry->dstream)
    return FUNC4(SVN_ERR_RA_SVN_MALFORMED_DATA, NULL,
                            FUNC2("Apply-textdelta not active"));
  FUNC0(FUNC7(entry->dstream));
  entry->dstream = NULL;
  FUNC5(entry->pool);
  return SVN_NO_ERROR;
}