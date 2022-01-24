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
struct TYPE_6__ {int /*<<< orphan*/  pool; } ;
typedef  TYPE_1__ trail_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct things_changed_args {int* changed_p; int /*<<< orphan*/  strict; int /*<<< orphan*/  path2; int /*<<< orphan*/  root2; int /*<<< orphan*/  path1; int /*<<< orphan*/  root1; } ;
typedef  int /*<<< orphan*/  dag_node_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC5(void *baton, trail_t *trail)
{
  struct things_changed_args *args = baton;
  dag_node_t *node1, *node2;
  apr_hash_t *proplist1, *proplist2;

  FUNC0(FUNC1(&node1, args->root1, args->path1, trail, trail->pool));
  FUNC0(FUNC1(&node2, args->root2, args->path2, trail, trail->pool));
  FUNC0(FUNC4(args->changed_p, NULL,
                                        node1, node2, trail, trail->pool));

  /* Is there a potential false positive and do we want to correct it? */
  if (!args->strict || !*args->changed_p)
    return SVN_NO_ERROR;

  /* Different representations. They might still have equal contents. */
  FUNC0(FUNC3(&proplist1, node1,
                                        trail, trail->pool));
  FUNC0(FUNC3(&proplist2, node2,
                                        trail, trail->pool));

  *args->changed_p = !FUNC2(proplist1, proplist2,
                                               trail->pool);
  return SVN_NO_ERROR;
}