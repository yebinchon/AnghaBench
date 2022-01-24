#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_svn_conn_t ;
typedef  int /*<<< orphan*/  svn_ra_svn__list_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  server_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_INCORRECT_PARAMS ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/  const* const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ **,scalar_t__*,int /*<<< orphan*/ **) ; 

__attribute__((used)) static svn_error_t *
FUNC5(svn_ra_svn_conn_t *conn,
                 apr_pool_t *pool,
                 svn_ra_svn__list_t *params,
                 void *baton)
{
  server_baton_t *b = baton;
  svn_revnum_t rev;
  const char *name;
  svn_string_t *value;
  const svn_string_t *const *old_value_p;
  svn_string_t *old_value;
  svn_boolean_t dont_care;

  FUNC0(FUNC4(params, "rc(?s)(b?s)",
                                  &rev, &name, &value,
                                  &dont_care, &old_value));

  /* Argument parsing. */
  if (dont_care)
    old_value_p = NULL;
  else
    old_value_p = (const svn_string_t *const *)&old_value;

  /* Input validation. */
  if (dont_care && old_value)
    {
      svn_error_t *err;
      err = FUNC3(SVN_ERR_INCORRECT_PARAMS, NULL,
                             "'previous-value' and 'dont-care' cannot both be "
                             "set in 'change-rev-prop2' request");
      return FUNC2(err, b, conn, pool);
    }

  /* Do it. */
  FUNC0(FUNC1(conn, b, rev, name, old_value_p, value, pool));

  return SVN_NO_ERROR;
}