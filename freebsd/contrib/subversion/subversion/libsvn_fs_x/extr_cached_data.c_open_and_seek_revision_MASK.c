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
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_fs_x__revision_file_t ;
struct TYPE_4__ {int /*<<< orphan*/  change_set; } ;
typedef  TYPE_1__ svn_fs_x__id_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_uint32_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int apr_off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static svn_error_t *
FUNC6(svn_fs_x__revision_file_t **file,
                       svn_fs_t *fs,
                       const svn_fs_x__id_t *id,
                       apr_pool_t *result_pool,
                       apr_pool_t *scratch_pool)
{
  svn_fs_x__revision_file_t *rev_file;
  apr_off_t offset = -1;
  apr_uint32_t sub_item = 0;
  svn_revnum_t rev = FUNC2(id->change_set);

  FUNC0(FUNC1(rev, fs, scratch_pool));

  FUNC0(FUNC4(&rev_file, fs, rev, result_pool));
  FUNC0(FUNC3(&offset, &sub_item, fs, rev_file, id,
                                scratch_pool));
  FUNC0(FUNC5(rev_file, NULL, offset));

  *file = rev_file;

  return SVN_NO_ERROR;
}