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
struct TYPE_3__ {int /*<<< orphan*/  db; int /*<<< orphan*/  s3stmt; } ;
typedef  TYPE_1__ svn_sqlite__stmt_t ;
typedef  scalar_t__ svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  sqlite_int64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

svn_error_t *
FUNC4(svn_sqlite__stmt_t *stmt,
                        int slot,
                        svn_revnum_t value)
{
  if (FUNC1(value))
    FUNC0(FUNC2(stmt->s3stmt, slot,
                                  (sqlite_int64)value), stmt->db);
  else
    FUNC0(FUNC3(stmt->s3stmt, slot), stmt->db);

  return SVN_NO_ERROR;
}