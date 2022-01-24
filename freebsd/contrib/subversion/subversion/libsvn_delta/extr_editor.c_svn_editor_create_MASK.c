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
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_4__ {int /*<<< orphan*/ * state_pool; int /*<<< orphan*/  finished; void* completed_nodes; void* pending_incomplete_children; int /*<<< orphan*/  scratch_pool; void* cancel_baton; int /*<<< orphan*/  cancel_func; void* baton; } ;
typedef  TYPE_1__ svn_editor_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC3(svn_editor_t **editor,
                  void *editor_baton,
                  svn_cancel_func_t cancel_func,
                  void *cancel_baton,
                  apr_pool_t *result_pool,
                  apr_pool_t *scratch_pool)
{
  *editor = FUNC1(result_pool, sizeof(**editor));

  (*editor)->baton = editor_baton;
  (*editor)->cancel_func = cancel_func;
  (*editor)->cancel_baton = cancel_baton;
  (*editor)->scratch_pool = FUNC2(result_pool);

#ifdef ENABLE_ORDERING_CHECK
  (*editor)->pending_incomplete_children = apr_hash_make(result_pool);
  (*editor)->completed_nodes = apr_hash_make(result_pool);
  (*editor)->finished = FALSE;
  (*editor)->state_pool = result_pool;
#endif

  return SVN_NO_ERROR;
}