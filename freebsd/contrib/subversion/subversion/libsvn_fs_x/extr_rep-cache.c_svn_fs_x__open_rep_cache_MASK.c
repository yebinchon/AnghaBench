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
struct TYPE_5__ {int /*<<< orphan*/  rep_cache_db_opened; } ;
typedef  TYPE_1__ svn_fs_x__data_t ;
struct TYPE_6__ {int /*<<< orphan*/  path; TYPE_1__* fsap_data; } ;
typedef  TYPE_2__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  open_rep_cache ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

svn_error_t *
FUNC5(svn_fs_t *fs,
                         apr_pool_t *scratch_pool)
{
  svn_fs_x__data_t *ffd = fs->fsap_data;
  svn_error_t *err = FUNC2(&ffd->rep_cache_db_opened,
                                           open_rep_cache, fs, scratch_pool);
  return FUNC4(err,
                               FUNC0("Couldn't open rep-cache database '%s'"),
                               FUNC3(
                                 FUNC1(fs->path, scratch_pool),
                                 scratch_pool));
}