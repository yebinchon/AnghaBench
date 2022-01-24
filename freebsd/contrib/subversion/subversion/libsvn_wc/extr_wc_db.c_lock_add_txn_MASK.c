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
struct TYPE_6__ {int /*<<< orphan*/  sdb; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
struct TYPE_7__ {int /*<<< orphan*/  date; int /*<<< orphan*/ * comment; int /*<<< orphan*/ * owner; int /*<<< orphan*/  token; } ;
typedef  TYPE_2__ svn_wc__db_lock_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_INSERT_LOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC7(svn_wc__db_wcroot_t *wcroot,
             const char *local_relpath,
             const svn_wc__db_lock_t *lock,
             apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  const char *repos_relpath;
  apr_int64_t repos_id;

  FUNC0(FUNC6(NULL, NULL, NULL,
                                            &repos_relpath, &repos_id,
                                            NULL, NULL, NULL, NULL, NULL,
                                            NULL, NULL, NULL, NULL, NULL,
                                            wcroot, local_relpath,
                                            scratch_pool, scratch_pool));

  FUNC0(FUNC4(&stmt, wcroot->sdb, STMT_INSERT_LOCK));
  FUNC0(FUNC3(stmt, "iss",
                            repos_id, repos_relpath, lock->token));

  if (lock->owner != NULL)
    FUNC0(FUNC2(stmt, 4, lock->owner));

  if (lock->comment != NULL)
    FUNC0(FUNC2(stmt, 5, lock->comment));

  if (lock->date != 0)
    FUNC0(FUNC1(stmt, 6, lock->date));

  FUNC0(FUNC5(NULL, stmt));

  return SVN_NO_ERROR;
}