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
typedef  int /*<<< orphan*/  svn_fs_x__change_set_t ;
struct TYPE_4__ {int /*<<< orphan*/  rev; scalar_t__ is_txn_root; } ;
typedef  TYPE_1__ svn_fs_root_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

svn_fs_x__change_set_t
FUNC3(svn_fs_root_t *root)
{
  if (root->is_txn_root)
    return FUNC1(FUNC2(root));

  return FUNC0(root->rev);
}