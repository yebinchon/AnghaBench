#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_7__ {TYPE_3__* fsap_data; } ;
typedef  TYPE_1__ svn_fs_t ;
struct TYPE_8__ {int /*<<< orphan*/  pool; int /*<<< orphan*/  footer_offset; int /*<<< orphan*/  p2l_offset; int /*<<< orphan*/  file; int /*<<< orphan*/ * p2l_stream; } ;
typedef  TYPE_2__ svn_fs_fs__revision_file_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_9__ {scalar_t__ block_size; } ;
typedef  TYPE_3__ fs_fs_data_t ;
typedef  int /*<<< orphan*/  apr_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  P2L_STREAM_PREFIX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static svn_error_t *
FUNC3(svn_fs_fs__revision_file_t *rev_file,
                    svn_fs_t *fs,
                    svn_revnum_t revision)
{
  if (rev_file->p2l_stream == NULL)
    {
      fs_fs_data_t *ffd = fs->fsap_data;

      FUNC0(FUNC2(rev_file));
      FUNC0(FUNC1(&rev_file->p2l_stream,
                                 rev_file->file,
                                 rev_file->p2l_offset,
                                 rev_file->footer_offset,
                                 P2L_STREAM_PREFIX,
                                 (apr_size_t)ffd->block_size,
                                 rev_file->pool,
                                 rev_file->pool));
    }

  return SVN_NO_ERROR;
}