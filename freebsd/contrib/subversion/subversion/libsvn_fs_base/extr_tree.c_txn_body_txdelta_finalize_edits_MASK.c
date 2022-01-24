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
struct TYPE_8__ {int /*<<< orphan*/  node; int /*<<< orphan*/  path; TYPE_1__* root; int /*<<< orphan*/  result_checksum; } ;
typedef  TYPE_2__ txdelta_baton_t ;
struct TYPE_9__ {int /*<<< orphan*/  pool; } ;
typedef  TYPE_3__ trail_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_7__ {int /*<<< orphan*/  txn; int /*<<< orphan*/  fs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_fs_path_change_modify ; 

__attribute__((used)) static svn_error_t *
FUNC4(void *baton, trail_t *trail)
{
  txdelta_baton_t *tb = (txdelta_baton_t *) baton;
  FUNC0(FUNC2(tb->node,
                                          tb->result_checksum,
                                          tb->root->txn,
                                          trail, trail->pool));

  /* Make a record of this modification in the changes table. */
  return FUNC1(tb->root->fs, tb->root->txn, tb->path,
                    FUNC3(tb->node),
                    svn_fs_path_change_modify, TRUE, FALSE, trail,
                    trail->pool);
}