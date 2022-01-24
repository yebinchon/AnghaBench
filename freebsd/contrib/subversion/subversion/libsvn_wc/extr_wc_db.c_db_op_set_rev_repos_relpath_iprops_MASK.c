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
struct TYPE_4__ {int /*<<< orphan*/  wc_id; int /*<<< orphan*/  sdb; int /*<<< orphan*/  abspath; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_int64_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_UPDATE_BASE_REPOS ; 
 int /*<<< orphan*/  STMT_UPDATE_BASE_REVISION ; 
 int /*<<< orphan*/  STMT_UPDATE_IPROP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_depth_empty ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC8(svn_wc__db_wcroot_t *wcroot,
                                   const char *local_relpath,
                                   apr_array_header_t *iprops,
                                   svn_revnum_t rev,
                                   svn_boolean_t set_repos_relpath,
                                   const char *repos_relpath,
                                   apr_int64_t repos_id,
                                   apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;

  FUNC0(FUNC2(wcroot,
                        FUNC3(wcroot->abspath, local_relpath,
                                        scratch_pool),
                        svn_depth_empty, scratch_pool));


  if (FUNC1(rev))
    {
      FUNC0(FUNC6(&stmt, wcroot->sdb,
                                        STMT_UPDATE_BASE_REVISION));

      FUNC0(FUNC5(stmt, "isr", wcroot->wc_id, local_relpath,
                                rev));

      FUNC0(FUNC7(stmt));
    }

  if (set_repos_relpath)
    {
      FUNC0(FUNC6(&stmt, wcroot->sdb,
                                        STMT_UPDATE_BASE_REPOS));

      FUNC0(FUNC5(stmt, "isis", wcroot->wc_id, local_relpath,
                                repos_id, repos_relpath));

      FUNC0(FUNC7(stmt));
    }

  /* Set or clear iprops. */
  FUNC0(FUNC6(&stmt, wcroot->sdb,
                                    STMT_UPDATE_IPROP));
  FUNC0(FUNC5(stmt, "is",
                            wcroot->wc_id,
                            local_relpath));
  FUNC0(FUNC4(stmt, 3, iprops, scratch_pool));
  FUNC0(FUNC7(stmt));

  return SVN_NO_ERROR;
}