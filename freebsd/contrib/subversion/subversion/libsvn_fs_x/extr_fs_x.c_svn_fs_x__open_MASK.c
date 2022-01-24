#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ youngest_rev_cache; } ;
typedef  TYPE_1__ svn_fs_x__data_t ;
struct TYPE_10__ {int /*<<< orphan*/  pool; int /*<<< orphan*/  path; TYPE_1__* fsap_data; } ;
typedef  TYPE_2__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC7(svn_fs_t *fs,
               const char *path,
               apr_pool_t *scratch_pool)
{
  svn_fs_x__data_t *ffd = fs->fsap_data;
  fs->path = FUNC1(fs->pool, path);

  /* Read the FS format file. */
  FUNC0(FUNC5(fs, scratch_pool));

  /* Read in and cache the repository uuid. */
  FUNC0(FUNC4(fs, scratch_pool));

  /* Read the min unpacked revision. */
  FUNC0(FUNC6(fs, scratch_pool));

  /* Read the configuration file. */
  FUNC0(FUNC2(ffd, fs->path, fs->pool, scratch_pool));

  /* Global configuration options. */
  FUNC0(FUNC3(fs));

  ffd->youngest_rev_cache = 0;

  return SVN_NO_ERROR;
}