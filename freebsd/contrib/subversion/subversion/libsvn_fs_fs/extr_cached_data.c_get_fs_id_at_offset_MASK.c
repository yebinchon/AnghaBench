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
typedef  scalar_t__ svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_id_t ;
struct TYPE_5__ {int /*<<< orphan*/  stream; int /*<<< orphan*/  file; } ;
typedef  TYPE_1__ svn_fs_fs__revision_file_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_6__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_2__ node_revision_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC6(svn_fs_id_t **id_p,
                    svn_fs_fs__revision_file_t *rev_file,
                    svn_fs_t *fs,
                    svn_revnum_t rev,
                    apr_off_t offset,
                    apr_pool_t *pool)
{
  node_revision_t *noderev;

  FUNC0(FUNC1(fs, rev_file->file, NULL, offset, pool));
  FUNC0(FUNC5(&noderev,
                                  rev_file->stream,
                                  pool, pool));

  /* noderev->id is const, get rid of that */
  *id_p = FUNC3(noderev->id, pool);

  /* assert that the txn_id is REV
   * (asserting on offset would be harder because we the rev_offset is not
   * known here) */
  FUNC2(FUNC4(*id_p) == rev);

  return SVN_NO_ERROR;
}