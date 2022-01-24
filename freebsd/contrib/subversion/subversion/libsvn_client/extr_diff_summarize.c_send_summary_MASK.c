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
typedef  int /*<<< orphan*/  svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_4__ {int /*<<< orphan*/  node_kind; scalar_t__ prop_changed; scalar_t__ summarize_kind; int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ svn_client_diff_summarize_t ;
typedef  scalar_t__ svn_client_diff_summarize_kind_t ;
typedef  scalar_t__ svn_boolean_t ;
struct summarize_baton_t {int /*<<< orphan*/  summarize_func_baton; int /*<<< orphan*/  (* summarize_func ) (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  skip_relpath; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_client_diff_summarize_kind_modified ; 
 scalar_t__ svn_client_diff_summarize_kind_normal ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static svn_error_t *
FUNC5(struct summarize_baton_t *b,
             const char *path,
             svn_client_diff_summarize_kind_t summarize_kind,
             svn_boolean_t prop_changed,
             svn_node_kind_t node_kind,
             apr_pool_t *scratch_pool)
{
  svn_client_diff_summarize_t *sum = FUNC2(scratch_pool, sizeof(*sum));

  FUNC1(summarize_kind != svn_client_diff_summarize_kind_normal
                 || prop_changed);

  /* PATH is relative to the anchor of the diff, but SUM->path needs to be
     relative to the target of the diff. */
  sum->path = FUNC4(b->skip_relpath, path);
  sum->summarize_kind = summarize_kind;
  if (summarize_kind == svn_client_diff_summarize_kind_modified
      || summarize_kind == svn_client_diff_summarize_kind_normal)
    sum->prop_changed = prop_changed;
  sum->node_kind = node_kind;

  FUNC0(b->summarize_func(sum, b->summarize_func_baton, scratch_pool));
  return SVN_NO_ERROR;
}