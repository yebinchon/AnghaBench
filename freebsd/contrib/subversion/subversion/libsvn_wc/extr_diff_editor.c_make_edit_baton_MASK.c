#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_diff_tree_processor_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  void* svn_boolean_t ;
struct edit_baton_t {int /*<<< orphan*/ * pool; void* cancel_baton; int /*<<< orphan*/  cancel_func; void* diff_pristine; void* local_before_remote; void* ignore_ancestry; int /*<<< orphan*/  depth; int /*<<< orphan*/  const* processor; void* target; void* anchor_abspath; int /*<<< orphan*/ * db; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 struct edit_baton_t* FUNC1 (int /*<<< orphan*/ *,int) ; 
 void* FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

__attribute__((used)) static svn_error_t *
FUNC4(struct edit_baton_t **edit_baton,
                svn_wc__db_t *db,
                const char *anchor_abspath,
                const char *target,
                const svn_diff_tree_processor_t *diff_processor,
                svn_depth_t depth,
                svn_boolean_t ignore_ancestry,
                svn_boolean_t use_text_base,
                svn_boolean_t reverse_order,
                svn_cancel_func_t cancel_func,
                void *cancel_baton,
                apr_pool_t *pool)
{
  struct edit_baton_t *eb;

  FUNC0(FUNC3(anchor_abspath));

  eb = FUNC1(pool, sizeof(*eb));
  eb->db = db;
  eb->anchor_abspath = FUNC2(pool, anchor_abspath);
  eb->target = FUNC2(pool, target);
  eb->processor = diff_processor;
  eb->depth = depth;
  eb->ignore_ancestry = ignore_ancestry;
  eb->local_before_remote = reverse_order;
  eb->diff_pristine = use_text_base;
  eb->cancel_func = cancel_func;
  eb->cancel_baton = cancel_baton;
  eb->pool = pool;

  *edit_baton = eb;
  return SVN_NO_ERROR;
}