#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  pool; } ;
typedef  TYPE_1__ trail_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_7__ {int /*<<< orphan*/  pool; int /*<<< orphan*/  node; int /*<<< orphan*/  file_stream; int /*<<< orphan*/  path; int /*<<< orphan*/  root; } ;
typedef  TYPE_2__ file_contents_baton_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC3(void *baton, trail_t *trail)
{
  file_contents_baton_t *fb = (file_contents_baton_t *) baton;

  /* First create a dag_node_t from the root/path pair. */
  FUNC0(FUNC1(&(fb->node), fb->root, fb->path, trail, trail->pool));

  /* Then create a readable stream from the dag_node_t. */
  return FUNC2(&(fb->file_stream),
                                       fb->node, trail, fb->pool);
}