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
struct TYPE_4__ {int /*<<< orphan*/  date; void* comment; void* owner; void* token; } ;
typedef  TYPE_1__ svn_wc__db_lock_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_wc__db_lock_t *
FUNC4(svn_sqlite__stmt_t *stmt,
                  int col_token,
                  int col_owner,
                  int col_comment,
                  int col_date,
                  apr_pool_t *result_pool)
{
  svn_wc__db_lock_t *lock;

  if (FUNC2(stmt, col_token))
    {
      lock = NULL;
    }
  else
    {
      lock = FUNC0(result_pool, sizeof(svn_wc__db_lock_t));
      lock->token = FUNC3(stmt, col_token, result_pool);
      lock->owner = FUNC3(stmt, col_owner, result_pool);
      lock->comment = FUNC3(stmt, col_comment, result_pool);
      lock->date = FUNC1(stmt, col_date);
    }
  return lock;
}