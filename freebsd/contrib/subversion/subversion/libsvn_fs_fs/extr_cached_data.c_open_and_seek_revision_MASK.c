#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
struct TYPE_5__ {int /*<<< orphan*/  file; } ;
typedef  TYPE_1__ svn_fs_fs__revision_file_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_uint64_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int apr_off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(svn_fs_fs__revision_file_t **file,
                       svn_fs_t *fs,
                       svn_revnum_t rev,
                       apr_uint64_t item,
                       apr_pool_t *pool)
{
  svn_fs_fs__revision_file_t *rev_file;
  apr_off_t offset = -1;

  FUNC0(FUNC2(rev, fs, pool));

  FUNC0(FUNC4(&rev_file, fs, rev, pool, pool));
  FUNC0(FUNC3(&offset, fs, rev_file, rev, NULL, item,
                                 pool));

  FUNC0(FUNC1(fs, rev_file->file, NULL, offset, pool));

  *file = rev_file;

  return SVN_NO_ERROR;
}