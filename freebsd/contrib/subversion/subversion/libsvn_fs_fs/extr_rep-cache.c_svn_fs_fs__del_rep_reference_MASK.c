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
struct TYPE_5__ {TYPE_2__* fsap_data; } ;
typedef  TYPE_1__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_6__ {scalar_t__ format; int /*<<< orphan*/  rep_cache_db; } ;
typedef  TYPE_2__ fs_fs_data_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_DEL_REPS_YOUNGER_THAN_REV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ SVN_FS_FS__MIN_REP_SHARING_FORMAT ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC6(svn_fs_t *fs,
                             svn_revnum_t youngest,
                             apr_pool_t *pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;
  svn_sqlite__stmt_t *stmt;

  FUNC1(ffd->format >= SVN_FS_FS__MIN_REP_SHARING_FORMAT);
  if (! ffd->rep_cache_db)
    FUNC0(FUNC2(fs, pool));

  FUNC0(FUNC4(&stmt, ffd->rep_cache_db,
                                    STMT_DEL_REPS_YOUNGER_THAN_REV));
  FUNC0(FUNC3(stmt, "r", youngest));
  FUNC0(FUNC5(stmt));

  return SVN_NO_ERROR;
}