#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_fs_t ;
struct TYPE_6__ {int /*<<< orphan*/  number; int /*<<< orphan*/  revision; } ;
typedef  TYPE_1__ svn_fs_fs__id_part_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_uint64_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC3(svn_fs_fs__id_part_t *node_id_p,
                    svn_fs_t *fs,
                    const svn_fs_fs__id_part_t *txn_id,
                    apr_pool_t *pool)
{
  apr_uint64_t node_id, copy_id;

  /* First read in the current next-ids file. */
  FUNC0(FUNC1(&node_id, &copy_id, fs, txn_id, pool));

  node_id_p->revision = SVN_INVALID_REVNUM;
  node_id_p->number = node_id;

  FUNC0(FUNC2(fs, txn_id, ++node_id, copy_id, pool));

  return SVN_NO_ERROR;
}