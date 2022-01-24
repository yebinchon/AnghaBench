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
struct TYPE_3__ {int /*<<< orphan*/  sdb; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  scalar_t__ apr_int64_t ;

/* Variables and functions */
 scalar_t__ INVALID_REPOS_ID ; 
 int /*<<< orphan*/  STMT_SELECT_REPOSITORY_BY_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_WC_CORRUPT ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC9(const char **repos_root_url,
                            const char **repos_uuid,
                            svn_wc__db_wcroot_t *wcroot,
                            apr_int64_t repos_id,
                            apr_pool_t *result_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;

  if (!repos_root_url && !repos_uuid)
    return SVN_NO_ERROR;

  if (repos_id == INVALID_REPOS_ID)
    {
      if (repos_root_url)
        *repos_root_url = NULL;
      if (repos_uuid)
        *repos_uuid = NULL;
      return SVN_NO_ERROR;
    }

  FUNC0(FUNC6(&stmt, wcroot->sdb,
                                    STMT_SELECT_REPOSITORY_BY_ID));
  FUNC0(FUNC4(stmt, "i", repos_id));
  FUNC0(FUNC8(&have_row, stmt));
  if (!have_row)
    return FUNC2(SVN_ERR_WC_CORRUPT, FUNC7(stmt),
                             FUNC1("No REPOSITORY table entry for id '%ld'"),
                             (long int)repos_id);

  if (repos_root_url)
    *repos_root_url = FUNC5(stmt, 0, result_pool);
  if (repos_uuid)
    *repos_uuid = FUNC5(stmt, 1, result_pool);

  return FUNC3(FUNC7(stmt));
}