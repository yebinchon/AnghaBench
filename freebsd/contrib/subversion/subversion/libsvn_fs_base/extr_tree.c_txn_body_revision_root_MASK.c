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
struct TYPE_4__ {int /*<<< orphan*/  pool; int /*<<< orphan*/  fs; } ;
typedef  TYPE_1__ trail_t ;
typedef  int /*<<< orphan*/  svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct revision_root_args {int /*<<< orphan*/ ** root_p; int /*<<< orphan*/  rev; } ;
typedef  int /*<<< orphan*/  dag_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC3(void *baton,
                       trail_t *trail)
{
  struct revision_root_args *args = baton;
  dag_node_t *root_dir;
  svn_fs_root_t *root;

  FUNC0(FUNC2(&root_dir, trail->fs, args->rev,
                                         trail, trail->pool));
  root = FUNC1(trail->fs, args->rev, root_dir, trail->pool);

  *args->root_p = root;
  return SVN_NO_ERROR;
}