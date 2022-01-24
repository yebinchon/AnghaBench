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
struct TYPE_3__ {int /*<<< orphan*/  wc_id; int /*<<< orphan*/  sdb; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_SELECT_MOVED_OUTSIDE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC2 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC8(const char **required_relpath,
                          svn_wc__db_wcroot_t *wcroot,
                          const char *local_relpath,
                          apr_pool_t *result_pool,
                          apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;

  *required_relpath = local_relpath;

  /* This simply looks for all moves out of the LOCAL_RELPATH tree. We
     could attempt to limit it to only those moves that are going to
     be resolved but that would require second guessing the resolver.
     This simple algorithm is sufficient although it may give a
     strictly larger/deeper lock than necessary. */
  FUNC0(FUNC5(&stmt, wcroot->sdb,
                                    STMT_SELECT_MOVED_OUTSIDE));
  FUNC0(FUNC3(stmt, "isd", wcroot->wc_id, local_relpath, 0));
  FUNC0(FUNC7(&have_row, stmt));

  while (have_row)
    {
      const char *move_dst_relpath = FUNC4(stmt, 1,
                                                             NULL);

      *required_relpath
        = FUNC2(*required_relpath,
                                           move_dst_relpath,
                                           scratch_pool);

      FUNC0(FUNC7(&have_row, stmt));
    }
  FUNC0(FUNC6(stmt));

  *required_relpath = FUNC1(result_pool, *required_relpath);

  return SVN_NO_ERROR;
}