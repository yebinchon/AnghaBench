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
struct TYPE_5__ {int /*<<< orphan*/  pool; } ;
typedef  TYPE_1__ trail_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct dir_entries_args {int /*<<< orphan*/ ** table_p; int /*<<< orphan*/  path; int /*<<< orphan*/  root; } ;
typedef  int /*<<< orphan*/  dag_node_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC4(void *baton,
                     trail_t *trail)
{
  struct dir_entries_args *args = baton;
  dag_node_t *node;
  apr_hash_t *entries;

  FUNC0(FUNC2(&node, args->root, args->path, trail, trail->pool));

  /* Get the entries for PARENT_PATH. */
  FUNC0(FUNC3(&entries, node, trail, trail->pool));

  /* Potentially initialize the return value to an empty hash. */
  *args->table_p = entries ? entries : FUNC1(trail->pool);
  return SVN_NO_ERROR;
}