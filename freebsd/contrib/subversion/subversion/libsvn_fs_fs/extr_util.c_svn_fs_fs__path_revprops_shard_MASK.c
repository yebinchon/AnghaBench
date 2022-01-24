#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int svn_revnum_t ;
struct TYPE_4__ {int /*<<< orphan*/  path; TYPE_2__* fsap_data; } ;
typedef  TYPE_1__ svn_fs_t ;
struct TYPE_5__ {int max_files_per_dir; } ;
typedef  TYPE_2__ fs_fs_data_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  PATH_REVPROPS_DIR ; 
 int /*<<< orphan*/  SVN_VA_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char const* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

const char *
FUNC3(svn_fs_t *fs,
                               svn_revnum_t rev,
                               apr_pool_t *pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;

  FUNC1(ffd->max_files_per_dir);
  return FUNC2(pool, fs->path, PATH_REVPROPS_DIR,
                              FUNC0(pool, "%ld",
                                           rev / ffd->max_files_per_dir),
                              SVN_VA_NULL);
}