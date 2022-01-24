#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_5__ {int /*<<< orphan*/  rep_cache_db; } ;
typedef  TYPE_1__ svn_fs_x__data_t ;
struct TYPE_6__ {TYPE_1__* fsap_data; } ;
typedef  TYPE_2__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_DEL_REPS_YOUNGER_THAN_REV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC5(svn_fs_t *fs,
                            svn_revnum_t youngest,
                            apr_pool_t *scratch_pool)
{
  svn_fs_x__data_t *ffd = fs->fsap_data;
  svn_sqlite__stmt_t *stmt;

  if (! ffd->rep_cache_db)
    FUNC0(FUNC1(fs, scratch_pool));

  FUNC0(FUNC3(&stmt, ffd->rep_cache_db,
                                    STMT_DEL_REPS_YOUNGER_THAN_REV));
  FUNC0(FUNC2(stmt, "r", youngest));
  FUNC0(FUNC4(stmt));

  return SVN_NO_ERROR;
}