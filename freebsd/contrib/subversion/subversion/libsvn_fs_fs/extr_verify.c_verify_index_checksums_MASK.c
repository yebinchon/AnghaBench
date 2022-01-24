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
struct TYPE_5__ {int /*<<< orphan*/  p2l_checksum; int /*<<< orphan*/  footer_offset; int /*<<< orphan*/  p2l_offset; int /*<<< orphan*/  file; int /*<<< orphan*/  l2p_checksum; int /*<<< orphan*/  l2p_offset; } ;
typedef  TYPE_1__ svn_fs_fs__revision_file_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(svn_fs_t *fs,
                       svn_revnum_t start,
                       svn_cancel_func_t cancel_func,
                       void *cancel_baton,
                       apr_pool_t *scratch_pool)
{
  svn_fs_fs__revision_file_t *rev_file;

  /* Open the rev / pack file and read the footer */
  FUNC0(FUNC3(&rev_file, fs, start,
                                           scratch_pool, scratch_pool));
  FUNC0(FUNC1(rev_file));

  /* Verify the index contents against the checksum from the footer. */
  FUNC0(FUNC4(rev_file->file, "L2P index",
                                rev_file->l2p_offset, rev_file->p2l_offset,
                                rev_file->l2p_checksum,
                                cancel_func, cancel_baton, scratch_pool));
  FUNC0(FUNC4(rev_file->file, "P2L index",
                                rev_file->p2l_offset, rev_file->footer_offset,
                                rev_file->p2l_checksum,
                                cancel_func, cancel_baton, scratch_pool));

  /* Done. */
  FUNC0(FUNC2(rev_file));

  return SVN_NO_ERROR;
}